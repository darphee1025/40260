clean :
	rm -rf *.v *.h *.ralf  

apb : clean
	python gen_apb_file.py template.xls

cfg : 
	rm -rf *_cfg.v
	python gen_reg_cfg.py template.xls
h : 
	rm -rf *.h
	python gen_reg_h.py template.xls
ralf : 
	rm -rf *.ralf
	python gen_reg_ralf.py template.xls
task : 
	rm -rf *_task.v
	python gen_reg_task.py template.xls

all : clean apb cfg h ralf task
	
table :
	rm -rf *.rst
	python3 gen_reg_table.py template.xlsx

empty:
	python3 gen_verilog_empty_jwq40260.py
