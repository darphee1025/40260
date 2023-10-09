#!/usr/bin/env python
# coding: utf-8

import xlrd
import re
import os
import sys
import math

# ==========================================================
#  func process excel                              start#{{{
# ==========================================================
def nullUp2Valid(p_sheet,p_row,p_col):#如果cell(row,col)为空，则用往上的格代替
    if(p_sheet.cell(p_row,p_col).ctype!=0):
        return p_sheet.cell(p_row,p_col).value
    else:
        return nullUp2Valid(p_sheet,p_row-1,p_col)

def getValueCol(p_sheet,p_value):#返回匹配值出现的第一个列数
    for row in range (p_sheet.nrows):
        for col in range (p_sheet.ncols):
            if(p_sheet.cell(row,col).value==p_value):
                return col
# ==========================================================
#  func process excel                                end#}}}
# ==========================================================
#def initial value task
def ini_vl_task(base_value,p_address,p_reg):
    ini_vl_task=[]
    p_address = p_address.replace('0x','8\'h').replace('0X','8\'h')
    ini_vl_task.append("\ntask %s_ini_task;\n"%(p_reg.lower()))
    ini_vl_task.append("begin\n")
    ini_vl_task.append("    monitor_ip;\n")
    ini_vl_task.append("    `sbus_rdbck(%s + %s ,`SIZE_32,rdata_bck);\n"%(base_value,p_address))
    ini_vl_task.append("    if(rdata_bck !== %s[31:0])begin\n"%(p_reg.upper()))
    ini_vl_task.append("        $display(\"Error %s initla values read back is %h\",rdata_bck,$realtime);\n")
    ini_vl_task.append("    end else begin\n")
    ini_vl_task.append("        $display(\"success %s initla values read back is %h\",rdata_bck,$realtime);\n")
    ini_vl_task.append("    end\n")
    ini_vl_task.append("end\n")
    ini_vl_task.append("endtask\n")
    return ini_vl_task 

#def fild task
def fild_task(p_reg,p_fld,p_rst,p_bit):
    fild_task=[]
    fild_task.append("\ntask %s_task;\n"%(p_fld.lower()))
    fild_task.append("begin\n")
    fild_task.append("    monitor_ip;\n")
    fild_task.append("    %s%s = data[%s];\n"%(p_reg.upper(),p_bit,bit2width(p_bit)))
    fild_task.append("    `sbus_rdbck(,`SIZE_32,rdata_bck);\n")
    fild_task.append("    if(data[%s])begin\n"%(bus_width(bit)))
    fild_task.append("        data_tmp = rdata_bck | %s;\n"%(p_reg.upper()))
    fild_task.append("    end else begin\n")
    fild_task.append("        data_tmp = rdata_bck & %s;\n"%(p_reg.upper()))
    fild_task.append("    end\n")
    fild_task.append("    `sbus_write(data_tmp,,`SIZE_32);\n")
    fild_task.append("    `sbus_rdbck(,`SIZE_32,rdata_bck);\n")
    fild_task.append("    if(data[%s] === rdata_bck[%s])begin;\n"%(bus_width(bit),bit2width(bit)))
    fild_task.append("    end else begin\n")
    fild_task.append("    end\n")
    fild_task.append("end\n")
    fild_task.append("endtask\n")
    return fild_task 



# ==========================================================
#  func process bit/bus/width                      start#{{{
# ==========================================================
def bit2width(var1):      #input '[8:7]' return 2;input without ':' return 1
    if(":" in var1):
        var1=var1.replace('[','')
        var1=var1.replace(']','')
        var1=var1.split(':')
        var1=int(var1[0])-int(var1[1])+1       
        return var1
    else:
        return 1

def width2bus(var1):     #input 2 return '[1:0]'; input 1 return ' '
    if(var1==1):
        return ''
    else:
        return '['+str(var1-1)+':0]'

#def fild_width2bus(var1):     #input 2 return '[1:0]'; input 1 return ' '
#    if(var1==1):
#        return '['+str(var1-1)+':0]'
#    else:
#        return '['+str(var1-1)+':0]'

def bus_width(var1):
    var1=bit2width(var1)
    var1=width2bus(var1)
    return var1

#################################################################################
#################################################################################
#################################################################################
def gen_reset_values_pattern(p_sheet,ModuleName):

    reg_col  = getValueCol(p_sheet,'RegName')
    adr_col  = getValueCol(p_sheet,'OffsetAddress')

    fo=open("reg_reset_value_ptn.v","w")
    fo.write("initial begin :pattern\n")
    fo.write("`ifdef BFM\n")
    fo.write("    `boot_loader;\n")
    fo.write("    `rom_display;\n\n")

    for row in range (p_sheet.nrows)[1:]:
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)
        if(p_sheet.cell(row,adr_col).value!=''):
            fo.write("    `%s_ini_task;\n"%(reg_name.lower()))

    fo.write("\n    $finish();\n")
    fo.write("`else\n")
    fo.write("`endif\n")
    fo.write("end\n")

    fo.close()
    print("Successfully generated reg_reset_value_ptn.v")

def gen_fild_pattern(p_sheet,ModuleName):
    reg_col     = getValueCol(p_sheet,'RegName')
    fld_col     = getValueCol(p_sheet,'FieldName')
    rst_col     = getValueCol(p_sheet,'ResetValue')
    bit_col     = getValueCol(p_sheet,'Bits')
    access_col  = getValueCol(p_sheet,'Access')
    adr_col     = getValueCol(p_sheet,'OffsetAddress')
    rst_col     = getValueCol(p_sheet,'ResetValue')

    fo=open("reg_fild_pattern_ptn.v","w")
    fo.write("initial begin :pattern\n")
    fo.write("`ifdef BFM\n")
    fo.write("    `boot_loader;\n")
    fo.write("    `rom_display;\n\n")
    for row in range (p_sheet.nrows)[1:]:
        fld_name   = p_sheet.cell(row,fld_col).value.lower()
        rst_value  = p_sheet.cell(row,rst_col).value
        bit        = p_sheet.cell(row,bit_col).value
		#data_width = bus_width(bit)
        if(fld_name.lower() != 'reserved'):
            fo.write("    `%s_task(%s);\n"%(fld_name.lower(),rst_value.replace('b','h')))

    fo.write("\n    $finish();\n")
    fo.write("`else\n")
    fo.write("`endif\n")
    fo.write("end\n")

    fo.close()
    print("Successfully generated reg_fild_pattern_ptn.v")


def gen_task_define(p_sheet,ModuleName):
    base_col = getValueCol(p_sheet,'BaseAddress')
    base_value = p_sheet.cell(1,base_col).value.replace('0x','32\'h').replace('0X','32\'h')

    width_col = getValueCol(p_sheet,'Width')
    width_value = int(p_sheet.cell(1,width_col).value)

    reg_col = getValueCol(p_sheet,'RegName')
    fld_col = getValueCol(p_sheet,'FieldName')
    rst_col = getValueCol(p_sheet,'ResetValue')
    bit_col = getValueCol(p_sheet,'Bits')
    access_col  = getValueCol(p_sheet,'Access')
    adr_col  = getValueCol(p_sheet,'OffsetAddress')


    fo=open("define.v","w")
    fo.write("//initial value task define \n")
    for row in range (p_sheet.nrows)[1:]:
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)
        if(p_sheet.cell(row,adr_col).value!=''):
            fo.write("`define %20s       `pkgs.u_%s_task.%s_ini_task\n"%(reg_name.lower(),ModuleName,reg_name.lower()))

    fo.write("\n//fild task define \n")
    for row in range (p_sheet.nrows)[1:]:
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        if(fld_name.lower() != 'reserved'):
            fo.write("`define %20s       `pkgs.u_%s_task.%s_task\n"%(fld_name.lower(),ModuleName,fld_name.lower()))

    fo.close()
    print("Successfully generated define.v")

def gen_reg_task(p_sheet,ModuleName):
    base_col = getValueCol(p_sheet,'BaseAddress')
    base_value = p_sheet.cell(1,base_col).value

    width_col = getValueCol(p_sheet,'Width')
    width_value = int(p_sheet.cell(1,width_col).value)

    reg_col = getValueCol(p_sheet,'RegName')
    fld_col = getValueCol(p_sheet,'FieldName')
    rst_col = getValueCol(p_sheet,'ResetValue')
    bit_col = getValueCol(p_sheet,'Bits')
    access_col  = getValueCol(p_sheet,'Access')
    adr_col  = getValueCol(p_sheet,'OffsetAddress')

    fo=open("%s_task.v"%(ModuleName),"w")
    fo.write("module %s_task();\n"%(ModuleName))
    fo.write("`ifdef BFM\n")
    fo.write("reg [31:0] rdata_bck;\n")
    fo.write("reg [31:0] data_tmp;\n")
    fo.write("reg [31:0] data;\n")
    fo.write("\ntask monitor_ip;\n")
    fo.write("begin\n")
    fo.write("    $display(\"You configing register %s,show you...\t\");\n"%(ModuleName))
    #fo.write("    $display(\"TODO\t\");\n")
    fo.write("end\n")
    fo.write("endtask\n")
    fo.write("\n//fild name declared begin\n")
    for row in range (p_sheet.nrows)[1:]:
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        bit       = p_sheet.cell(row,bit_col).value
        if(fld_name.lower() != 'reserved'):
            fo.write("reg  %-11s%s;\n"%(bus_width(bit),fld_name))

    ##reg_declared
    fo.write("\n//reg declared\n")
    for row in range (p_sheet.nrows)[1:]:
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)

        width_col = getValueCol(p_sheet,'Width')
        width_value = int(p_sheet.cell(1,width_col).value)
        data_bus_width = width2bus(width_value)

        if(p_sheet.cell(row,adr_col).value!=''):
            fo.write("reg  %-11s%s;\n"%(data_bus_width,reg_name.upper()))

    fo.write("\n//======================================\n")
    fo.write("//=========================initial begin\n")
    fo.write("//======================================\n")
    fo.write("initial begin")
    for row in range (p_sheet.nrows)[1:]:
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        rst_value = p_sheet.cell(row,rst_col).value
        rst_value = re.search('[bodh][a-f0-9]+$',rst_value).group()
        bit       = p_sheet.cell(row,bit_col).value
        if(fld_name.lower() != 'reserved'):
            fo.write("   %s = %s\'%s;\n"%(fld_name,bit2width(bit),rst_value))

    fo.write("\n")

    for row in range (p_sheet.nrows)[1:]:
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        rst_value = p_sheet.cell(row,rst_col).value
        rst_value = re.search('[bodh][a-f0-9]+$',rst_value).group()
        bit       = p_sheet.cell(row,bit_col).value
        fld_type  = nullUp2Valid(p_sheet,row,access_col)
        if(fld_name.lower() == 'reserved' or fld_type == 'WO' or fld_type == 'WOC' or fld_type == 'WOS' or fld_type == 'WO1'):
            fo.write("   %s%s = %s\'%s;\n"%(reg_name.upper(),bit,bit2width(bit),rst_value))
        else:
            fo.write("   %s%s = %s;\n"%(reg_name.upper(),bit,fld_name))
    fo.write("end\n")#initial end
    
    fo.write("//======================================\n")
    fo.write("//=========================initial  end \n")
    fo.write("//======================================\n")
    fo.write("//initial value task \n")
    for row in range (p_sheet.nrows)[1:]:
        base_col   = getValueCol(p_sheet,'BaseAddress')
        base_value = p_sheet.cell(1,base_col).value.replace('0x','32\'h').replace('0X','32\'h')
        address    = nullUp2Valid(p_sheet,row,adr_col).replace('0x','8\'h').replace('0X','8\'h')
        reg_name   = nullUp2Valid(p_sheet,row,reg_col)
        if(p_sheet.cell(row,adr_col).value!=''):
		    fo.write("".join(ini_vl_task(base_value,address,reg_name)))

    fo.write("\n//======================fild task===========================\n")
    for row in range (p_sheet.nrows)[1:]:
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        rst_value = p_sheet.cell(row,rst_col).value
        rst_value = re.search('[bodh][a-f0-9]+$',rst_value).group()
        bit       = p_sheet.cell(row,bit_col).value
        fld_type  = nullUp2Valid(p_sheet,row,access_col)

        base_col   = getValueCol(p_sheet,'BaseAddress')
        base_value = p_sheet.cell(1,base_col).value.replace('0x','32\'h').replace('0X','32\'h')
        address    = nullUp2Valid(p_sheet,row,adr_col).replace('0x','8\'h').replace('0X','8\'h')

        width_col = getValueCol(p_sheet,'Width')
        width_value = int(p_sheet.cell(1,width_col).value)
        data_bus_width = width2bus(width_value)
        if(fld_name.lower() != 'reserved' ):
            #fo.write("".join(fild_task(reg_name,fld_name,rst_value,bit)))
            fo.write("\ntask %s_task;\n"%(fld_name.lower()))
            fo.write("input %8s    data;\n"%(bus_width(bit)))
            fo.write("begin\n")
            fo.write("    monitor_ip;\n")
            fo.write("    %s%s = data%s;\n"%(reg_name.upper(),bit,bus_width(bit)))
            fo.write("    `sbus_rdbck(%s + %s ,`SIZE_32,rdata_bck);\n"%(base_value,address))
            fo.write("    if(data%s)begin\n"%(bus_width(bit)))
            fo.write("        data_tmp = rdata_bck | %s;\n"%(reg_name.upper()))
            fo.write("    end else begin\n")
            fo.write("        data_tmp = rdata_bck & %s;\n"%(reg_name.upper()))
            fo.write("    end\n")
            fo.write("    `sbus_write(data_tmp , %s + %s ,`SIZE_32);\n"%(base_value,address))
            fo.write("    `sbus_rdbck(           %s + %s ,`SIZE_32,rdata_bck);\n"%(base_value,address))
            fo.write("    if(data%s === rdata_bck%s])begin;\n"%(bus_width(bit),bit))
            fo.write("        $display(\"success %s read back is %h\",rdata_bck,$realtime);\n")
            fo.write("    end else begin\n")
            fo.write("        $display(\"Error %s  read back is %h\",rdata_bck,$realtime);\n")
            fo.write("    end\n")
            fo.write("end\n")
            fo.write("endtask\n")

    fo.write("\n")
    fo.write("`else\n")
    fo.write("`endif\n")
    fo.write("endmodule\n")
    fo.close()
    print("Successfully generated %s_task.v"%(ModuleName))
 
#max_rows=sheet0.nrows#行数
#max_cols=sheet0.ncols#列数
if(len(sys.argv) < 2):
    print("[Error]:Not have input file")
    print("Usage : %s <filename>.xlsx"%(sys.argv[0]))
    sys.exit(1)

if(sys.argv[1]=='-help'):
    print("Usage : %s <filename>.xlsx"%(sys.argv[0]))
    sys.exit(0)

if(os.path.exists(sys.argv[1])==False):
    print("[Error]:Not such file")
    sys.exit(1)


book = xlrd.open_workbook(sys.argv[1])
sheets_num = len(book.sheet_names())
for index in range (sheets_num):
    sheet0 = book.sheet_by_index(index)
    ModuleName = sheet0.name
    gen_task_define(sheet0,ModuleName)
    gen_reg_task(sheet0,ModuleName)
    gen_reset_values_pattern(sheet0,ModuleName)
    gen_fild_pattern(sheet0,ModuleName)
sys.exit(0)

