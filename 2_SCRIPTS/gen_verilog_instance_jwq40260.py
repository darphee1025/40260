# -*- coding:utf-8 -*-
__author__ = 'Darphee'

import os
import re
import openpyxl
#  Last Modified: Sun Oct  8 16:20:30 2023
excel_name= "jwq40260_ipif.xlsx"

def gen_inst(sheet_number):
    #input_file= os.getcwd()+"\\"+excel_name
    input_file= os.getcwd()+"/"+excel_name
    #1、打开excel的工作表
    wb = openpyxl.load_workbook(input_file)
    #2、获取工作表的名字test,返回的是一个list
    module_name = wb.sheetnames[sheet_number]
    top_name=''.join(module_name)
    #top_name = "dig_top"
    #生成一个test.v，其中写入的是将test.xlsx中的信息转化为verilog的代码框架
    gen_file= os.getcwd()+"/"+top_name+'.sv'
    ##正则匹配re，获取需要的信息 \s代表空格、制表符、换行符  + 前面的字符一个或一个以上  \w代表数字、字母、下划线
    # *代表重复次数为0~无限多次   |或   +：至少1个~更多个  ？代表前面的字符可以是0个或者最多1个
    #对于标点符号比如 减号- 方括号[] 冒号：均需要用反斜杠\进行转义
    acquire_module=re.compile('(module)(\s+)(\w+)')
    acquire_ports =re.compile(".*(input|output|inout)(\s+)(wire|reg)?(\s+)(\[\w+\:0\])?(\w+)")

    with open(gen_file,'r') as file_obj:
        content = file_obj.read()#d读取test.v文件中的所有内容
        #print(content)
        module_obj = acquire_module.search(content)#从test.v中匹配到需要的字符串，search只返回一个匹配的结果
        port_obj =acquire_ports.findall(content) #findall返回所有的匹配结果，返回一个list类型
        #print( module_obj.group(3))#group用（）进行分组，group(0)或者group()代表所有组的集合，group(1)代表第一组（），依次递增
        #print( module_obj)#group用（）进行分组，group(0)或者group()代表所有组的集合，group(1)代表第一组（），依次递增
        #print(port_obj,type(port_obj))
    ##1、打开一个文件top.v,将产生的test.v文件进行例化
    #inst_file=os.getcwd()+"\\top.v"
    #inst_file = os.getcwd()+"\\"+top_name+'_inst.sv'
    inst_file = os.getcwd()+"/"+top_name+'_inst.sv'
    print(inst_file)
    if os.path.exists(inst_file):
        os.remove(inst_file)
    #print(inst_file)
    with open(inst_file,'a')as fp:
         fp.write(module_obj.group(3)+"  u_"+module_obj.group(3)+'\n(\n')
         for i in range(len(port_obj)):
             if(i<len(port_obj)-1):
                 fp.write('    .'+port_obj[i][5]+' ('+port_obj[i][5]+'),\n')
             else:
                 fp.write('    .'+port_obj[i][5]+' ('+port_obj[i][5]+')\n);\n')


def main():
    gen_inst(sheet_number=0)
    gen_inst(sheet_number=1)


if __name__ == "__main__":
    main()

