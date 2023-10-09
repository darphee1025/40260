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

def bus_width(var1):
    var1=bit2width(var1)
    var1=width2bus(var1)
    return var1

#################################################################################
#################################################################################
#################################################################################
def gen_reg_ralf(p_sheet,ModuleName):
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

    fo=open("%s.ralf"%(ModuleName),"w")
    fo.write("#write below command in Makefile\n")
    fo.write("#ralgen:\n")
    fo.write("#    ralgen -l sv  -uvm  -t  %s_regmodel  %s.ralf\n"%(ModuleName,ModuleName))
    fo.write("#use 'source %s.ralf' in top.ralf\n"%(ModuleName))
    last_reg_name = ''
    i = 0
    fo.write("#")
    for row in reversed(range (p_sheet.nrows)[1:]):
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        rst_value = p_sheet.cell(row,rst_col).value
        rst_value = re.search('[bodh][a-f0-9]+$',rst_value).group()
        bit       = p_sheet.cell(row,bit_col).value
        fld_type  = nullUp2Valid(p_sheet,row,access_col)
        if(fld_name.lower() != 'reserved'):
            if(reg_name != last_reg_name):
                fo.write("}\n")
                fo.write("\n")
                fo.write("register %s {\n"%(reg_name.upper()))
                fo.write("#  ToDo\n")
            last_reg_name = reg_name;
            fo.write("  field %s {\n"%(fld_name))
            fo.write("    bits %s;\n"%(bit2width(bit)))
            fo.write("    access %s;\n"%(fld_type.lower()))
            fo.write("    reset '%s;\n"%(rst_value))
            fo.write("  }\n")

        elif(fld_name.lower() == 'reserved'):
            if(reg_name != last_reg_name):
                fo.write("}\n")
                fo.write("\n")
                fo.write("register %s {\n"%(reg_name.upper()))
                fo.write("#  ToDo\n")
            last_reg_name = reg_name;
            i=i+1;
            fo.write("  field reserved%s {\n"%(i))
            fo.write("    bits %s;\n"%(bit2width(bit)))#different here
            fo.write("    access %s;\n"%(fld_type.lower()))
            fo.write("    reset '%s;\n"%(rst_value))
            fo.write("  }\n") 
    fo.write("}\n")
    
    fo.write("\n")
    fo.write("block %s_regmodel {\n"%(ModuleName))
    fo.write("  bytes %s;\n"%(width_value/8))
    for row in reversed(range (p_sheet.nrows)[1:]):
        reg_name  = nullUp2Valid(p_sheet,row,reg_col)
        fld_name  = p_sheet.cell(row,fld_col).value.lower()
        rst_value = p_sheet.cell(row,rst_col).value
        rst_value = re.search('[bodh][a-f0-9]+$',rst_value).group()
        bit       = p_sheet.cell(row,bit_col).value
        address   = p_sheet.cell(row,adr_col).value.replace('0x','h').replace('0X','h')
        fld_type  = nullUp2Valid(p_sheet,row,access_col)
        if(p_sheet.cell(row,adr_col).value!=''):
            fo.write("  register %-13s %-15s @'%s;\n"%(reg_name.upper(),"("+reg_name.lower()+")",address))

    fo.write("}\n")
    fo.write("\n")
    fo.close()
    print("Successfully generated %s.ralf"%(ModuleName))
 
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
    gen_reg_ralf(sheet0,ModuleName)
sys.exit(0)

