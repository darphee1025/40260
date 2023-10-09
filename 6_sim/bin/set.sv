/*************************************************************************
   > File Name: set.sv
   > Author: dafei.xiao
   > Mail: dafei.xiao@joulwatt.com
   > Created Time: Thu Sep 14 13:11:58 2023
 ************************************************************************/


//post annote sdf
`ifdef POST_LAYOUT_SIM
    initial begin
    `ifdef FPGA_VAR
        `ifdef POST_MIN
            $sdf_annotate("../fpga/syn/rpt/xxx.sdf",jwq40260_tb,,"sdf.log","MININUM");
        `elsif POST_MAX
            $sdf_annotate("../fpga/syn/rpt/xxx.sdf",jwq40260_tb,,"sdf.log","MAXINUM");
        `endif
    `else
        `ifdef POST_MIN
            $sdf_annotate("../fpga/syn/rpt/xxx.sdf",jwq40260_tb,,"sdf.log","MININUM");
        `elsif POST_MAX
            $sdf_annotate("../fpga/syn/rpt/xxx.sdf",jwq40260_tb,,"sdf.log","MAXINUM");
        `else
            $sdf_annotate("../fpga/syn/rpt/xxx.sdf",jwq40260_tb,,"sdf.log","MININUM");
        `endif
    end
`endif

//dump fsdb
`ifdef VCD_DUMP
initial begin
    $dumpon;
    $dumpfile(verilog.vcd);
    $dumpvars(0,jwq40260_tb);
    $dumpoff;
end
`endif

`ifdef FSDB_DUMP
initial begin
    $dumpon;
    $fsdbDumpfile(verilog.fsdb);
    `ifdef FSDB_MDA
        $fsdbDumpvars(0,jwq40260,"+mda");
    `else
        $fsdbDumpvars(0,jwq40260);
    `endif
    $dumpoff;
end
`endif


