module fault_summary #(
    parameter UDLY = 1,
    parameter MAX_CNT_10US = 200 
)(
    input    wire       clk                     ,  // Clock 20MHz 50ns
    input    wire       clk_en                  ,  // Clock Enable
    input    wire       rst_n                   ,  // rst_n = (PORB_FS==1) && (Vbos>Vbos_por) 
    output   wire       fs0b_active             ,
    output   wire       rstb_active             ,
    output   wire       pgood_active            ,
    output   reg  [3:0] flt_err_cnt             ,
    output   wire       flag_flt_max            , // flt_err_cnt = max value
    /////// from pins & analog
    input    wire       vcoremon_ov             ,
    input    wire       vddio_ov                ,
    input    wire [3:0] vmonx_ov                ,
    input    wire       vcoremon_uv             ,
    input    wire       vddio_uv                ,
    input    wire [3:0] vmonx_uv                ,
    input    wire       fccu1                   , //pins MCU monitor
    input    wire       fccu2                   , //pins 
    input    wire       fccu12                  ,
    output   wire       fccu_err                , // any fccu error
    input    wire       errmon                  , //pins extern IC monitor
    input    wire       errmon_ack              , //
    input    wire [1:0] errmon_ack_time         , 
    /////// wwdt core
    input    wire       incr_a                  , //a) WD error counter = max value
    input    wire       incr_b                  , //b) no/wrong WD refresh in INIT_FS
    input    wire       decr                    , //
    /////// from register
    input    wire       ext_rstb                , // Report an external RESET 
    input    wire       rstb_req                , // RSTB pulse request by the MCU  
    input    wire       rstb_diag               , // Report a RSTB Short to High
    input    wire       fs0b_diag               , // Report a FS0B Short to High
    input    wire       fs0b_sc_high_cfg        , // Assert RSTB in case of a short to high detected on FS0B
    input    wire       fs0b_req                , // FS0B pulse request by the MCU 
    input    wire       reg_corrupt             ,
    input    wire       otp_corrupt             ,
    input    wire       goto_initfs             ,
    input    wire [1:0] vcoremon_ov_fs_impact   ,
    input    wire [1:0] vcoremon_uv_fs_impact   ,
    input    wire [1:0] vddio_ov_fs_impact      ,
    input    wire [1:0] vddio_uv_fs_impact      ,
    input    wire [1:0] vmon1_ov_fs_impact      ,
    input    wire [1:0] vmon1_uv_fs_impact      ,
    input    wire [1:0] vmon2_ov_fs_impact      ,
    input    wire [1:0] vmon2_uv_fs_impact      ,
    input    wire [1:0] vmon3_ov_fs_impact      ,
    input    wire [1:0] vmon3_uv_fs_impact      ,
    input    wire [1:0] vmon4_ov_fs_impact      ,
    input    wire [1:0] vmon4_uv_fs_impact      ,
    //
    input    wire       fccu12_fs_impact        ,
    input    wire       fccu1_fs_impact         ,
    input    wire       fccu2_fs_impact         ,
    input    wire       errmon_fs_impact        ,
    input    wire [1:0] wd_fs_impact            ,
    input    wire [1:0] flt_err_impact          ,
    //
    input    wire [1:0] flt_err_cnt_limit       ,
    /////// from otp
    input    wire       otp_pgood_rstb          ,       
    input    wire       otp_pgood_vmon4         ,
    input    wire       otp_pgood_vmon3         ,
    input    wire       otp_pgood_vmon2         ,
    input    wire       otp_pgood_vmon1         ,
    input    wire       otp_pgood_vddio         ,
    input    wire       otp_pgood_vcore         
);
//reg  [3:0] flt_err_cnt          ;
reg  [3:0] max_flt_err_cnt      ;
reg  [2:0] intermediate_value   ; // ???

reg       incr_vld ;
reg [4:0] increment ;

wire flt_err_max = ((flt_err_max + increment) >= max_flt_err_cnt);
wire flt_err_zero = (flt_err_max == 'd0); 

wire flag_flt_equal_max   = (flt_err_cnt == max_flt_err_cnt);
wire flag_flt_equal_intr  = (flt_err_cnt == intermediate_value);
wire flag_flt_more_intr   = (flt_err_cnt >= intermediate_value);

assign flag_flt_max = flag_flt_equal_max;
////// vcoremon
reg  [1:0] vcoremon_ov_r ;
wire vcoremon_ov_pos = ~vcoremon_ov_r[1]&vcoremon_ov_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vcoremon_ov_r <= #UDLY 2'b0;
    else
        vcoremon_ov_r <= #UDLY {vcoremon_ov_r[0],vcoremon_ov};

wire [2:0] vcore_ov_assert; // fs0b,rstb,pgood
wire [2:0] vcore_ov_impact = {vcoremon_ov_fs_impact[0],vcoremon_ov_fs_impact[1],otp_pgood_vcore};
//wire [2:0] vcore_ov_temp = {3{vcoremon_ov}}&vcore_ov_impact; //
wire [2:0] vcore_ov_temp = {3{vcoremon_ov_pos}}&vcore_ov_impact;
wire [2:0] vcore_ov_temp2 = ((~vcore_ov_temp)+1'b1) & vcore_ov_temp; // one-hot
assign vcore_ov_assert[0] = |vcore_ov_temp2[0];
assign vcore_ov_assert[1] = |vcore_ov_temp2[1:0];
assign vcore_ov_assert[2] = |vcore_ov_temp2[2:0];

reg  [1:0] vcoremon_uv_r ;
wire vcoremon_uv_pos = ~vcoremon_uv_r[1]&vcoremon_uv_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vcoremon_uv_r <= #UDLY 2'b0;
    else
        vcoremon_uv_r <= #UDLY {vcoremon_uv_r[0],vcoremon_uv};
wire [2:0] vcore_uv_assert; // fs0b,rstb,pgood
wire [2:0] vcore_uv_impact = {vcoremon_uv_fs_impact[0],vcoremon_uv_fs_impact[1],otp_pgood_vcore};
//wire [2:0] vcore_uv_temp = {3{vcoremon_uv}}&vcore_uv_impact;
wire [2:0] vcore_uv_temp = {3{vcoremon_uv_pos}}&vcore_uv_impact;
wire [2:0] vcore_uv_temp2 = ((~vcore_uv_temp)+1'b1) & vcore_uv_temp; // one-hot
assign vcore_uv_assert[0] = |vcore_uv_temp2[0];
assign vcore_uv_assert[1] = |vcore_uv_temp2[1:0];
assign vcore_uv_assert[2] = |vcore_uv_temp2[2:0];

////// vddio
reg  [1:0] vddio_ov_r ;
wire vddio_ov_pos = ~vddio_ov_r[1]&vddio_ov_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vddio_ov_r <= #UDLY 2'b0;
    else
        vddio_ov_r <= #UDLY {vddio_ov_r[0],vddio_ov};
wire [2:0] vddio_ov_assert; // fs0b,rstb,pgood
wire [2:0] vddio_ov_impact = {vddio_ov_fs_impact[0],vddio_ov_fs_impact[1],otp_pgood_vddio};
//wire [2:0] vddio_ov_temp = {3{vddio_ov}}&vddio_ov_impact;
wire [2:0] vddio_ov_temp = {3{vddio_ov_pos}}&vddio_ov_impact;
wire [2:0] vddio_ov_temp2 = ((~vddio_ov_temp)+1'b1) & vddio_ov_temp; // one-hot
assign vddio_ov_assert[0] = |vddio_ov_temp2[0];
assign vddio_ov_assert[1] = |vddio_ov_temp2[1:0];
assign vddio_ov_assert[2] = |vddio_ov_temp2[2:0];

reg  [1:0] vddio_uv_r ;
wire vddio_uv_pos = ~vddio_uv_r[1]&vddio_uv_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vddio_uv_r <= #UDLY 2'b0;
    else
        vddio_uv_r <= #UDLY {vddio_uv_r[0],vddio_uv};
wire [2:0] vddio_uv_assert; // fs0b,rstb,pgood
wire [2:0] vddio_uv_impact = {vddio_uv_fs_impact[0],vddio_uv_fs_impact[1],otp_pgood_vddio};
//wire [2:0] vddio_uv_temp = {3{vddio_uv}}&vddio_uv_impact;
wire [2:0] vddio_uv_temp = {3{vddio_uv_pos}}&vddio_uv_impact;
wire [2:0] vddio_uv_temp2 = ((~vddio_uv_temp)+1'b1) & vddio_uv_temp; // one-hot
assign vddio_uv_assert[0] = |vddio_uv_temp2[0];
assign vddio_uv_assert[1] = |vddio_uv_temp2[1:0];
assign vddio_uv_assert[2] = |vddio_uv_temp2[2:0];

////// vmon1
reg  [1:0] vmon1_ov_r ;
wire vmon1_ov_pos = ~vmon1_ov_r[1]&vmon1_ov_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon1_ov_r <= #UDLY 2'b0;
    else
        vmon1_ov_r <= #UDLY {vmon1_ov_r[0],vmonx_ov[0]};
wire [2:0] vmon1_ov_assert; // fs0b,rstb,pgood
wire [2:0] vmon1_ov_impact = {vmon1_ov_fs_impact[0],vmon1_ov_fs_impact[1],otp_pgood_vmon1};
//wire [2:0] vmon1_ov_temp = {3{vmonx_ov[0]}}&vmon1_ov_impact;
wire [2:0] vmon1_ov_temp = {3{vmon1_ov_pos}}&vmon1_ov_impact;
wire [2:0] vmon1_ov_temp2 = ((~vmon1_ov_temp)+1'b1) & vmon1_ov_temp; // one-hot
assign vmon1_ov_assert[0] = |vmon1_ov_temp2[0];
assign vmon1_ov_assert[1] = |vmon1_ov_temp2[1:0];
assign vmon1_ov_assert[2] = |vmon1_ov_temp2[2:0];

reg  [1:0] vmon1_uv_r ;
wire vmon1_uv_pos = ~vmon1_uv_r[1]&vmon1_uv_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon1_uv_r <= #UDLY 2'b0;
    else
        vmon1_uv_r <= #UDLY {vmon1_uv_r[0],vmonx_uv[0]};
wire [2:0] vmon1_uv_assert; // fs0b,rstb,pgood
wire [2:0] vmon1_uv_impact = {vmon1_uv_fs_impact[0],vmon1_uv_fs_impact[1],otp_pgood_vmon1};
//wire [2:0] vmon1_uv_temp = {3{vmonx_uv[0]}}&vmon1_uv_impact;
wire [2:0] vmon1_uv_temp = {3{vmon1_uv_pos}}&vmon1_uv_impact;
wire [2:0] vmon1_uv_temp2 = ((~vmon1_uv_temp)+1'b1) & vmon1_uv_temp; // one-hot
assign vmon1_uv_assert[0] = |vmon1_uv_temp2[0];
assign vmon1_uv_assert[1] = |vmon1_uv_temp2[1:0];
assign vmon1_uv_assert[2] = |vmon1_uv_temp2[2:0];

////// vmon2
reg  [1:0] vmon2_ov_r ;
wire vmon2_ov_pos = ~vmon2_ov_r[1]&vmon2_ov_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon2_ov_r <= #UDLY 2'b0;
    else
        vmon2_ov_r <= #UDLY {vmon2_ov_r[0],vmonx_ov[1]};
wire [2:0] vmon2_ov_assert; // fs0b,rstb,pgood
wire [2:0] vmon2_ov_impact = {vmon2_ov_fs_impact[0],vmon2_ov_fs_impact[1],otp_pgood_vmon2};
//wire [2:0] vmon2_ov_temp = {3{vmonx_ov[1]}}&vmon2_ov_impact;
wire [2:0] vmon2_ov_temp = {3{vmon2_ov_pos}}&vmon2_ov_impact;
wire [2:0] vmon2_ov_temp2 = ((~vmon2_ov_temp)+1'b1) & vmon2_ov_temp; // one-hot
assign vmon2_ov_assert[0] = |vmon2_ov_temp2[0];
assign vmon2_ov_assert[1] = |vmon2_ov_temp2[1:0];
assign vmon2_ov_assert[2] = |vmon2_ov_temp2[2:0];

reg  [1:0] vmon2_uv_r ;
wire vmon2_uv_pos = ~vmon2_uv_r[1]&vmon2_uv_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon2_uv_r <= #UDLY 2'b0;
    else
        vmon2_uv_r <= #UDLY {vmon2_uv_r[0],vmonx_uv[1]};
wire [2:0] vmon2_uv_assert; // fs0b,rstb,pgood
wire [2:0] vmon2_uv_impact = {vmon2_uv_fs_impact[0],vmon2_uv_fs_impact[1],otp_pgood_vmon2};
//wire [2:0] vmon2_uv_temp = {3{vmonx_uv[1]}}&vmon2_uv_impact;
wire [2:0] vmon2_uv_temp = {3{vmon2_uv_pos}}&vmon2_uv_impact;
wire [2:0] vmon2_uv_temp2 = ((~vmon2_uv_temp)+1'b1) & vmon2_uv_temp; // one-hot
assign vmon2_uv_assert[0] = |vmon2_uv_temp2[0];
assign vmon2_uv_assert[1] = |vmon2_uv_temp2[1:0];
assign vmon2_uv_assert[2] = |vmon2_uv_temp2[2:0];

////// vmon3
reg  [1:0] vmon3_ov_r ;
wire vmon3_ov_pos = ~vmon3_ov_r[1]&vmon3_ov_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon3_ov_r <= #UDLY 2'b0;
    else
        vmon3_ov_r <= #UDLY {vmon3_ov_r[0],vmonx_ov[2]};
wire [2:0] vmon3_ov_assert; // fs0b,rstb,pgood
wire [2:0] vmon3_ov_impact = {vmon3_ov_fs_impact[0],vmon3_ov_fs_impact[1],otp_pgood_vmon3};
//wire [2:0] vmon3_ov_temp = {3{vmonx_ov[1]}}&vmon3_ov_impact;
wire [2:0] vmon3_ov_temp = {3{vmon3_ov_pos}}&vmon3_ov_impact;
wire [2:0] vmon3_ov_temp2 = ((~vmon3_ov_temp)+1'b1) & vmon3_ov_temp; // one-hot
assign vmon3_ov_assert[0] = |vmon3_ov_temp2[0];
assign vmon3_ov_assert[1] = |vmon3_ov_temp2[1:0];
assign vmon3_ov_assert[2] = |vmon3_ov_temp2[2:0];

reg  [1:0] vmon3_uv_r ;
wire vmon3_uv_pos = ~vmon3_uv_r[1]&vmon3_uv_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon3_uv_r <= #UDLY 2'b0;
    else
        vmon3_uv_r <= #UDLY {vmon3_uv_r[0],vmonx_uv[2]};
wire [2:0] vmon3_uv_assert; // fs0b,rstb,pgood
wire [2:0] vmon3_uv_impact = {vmon3_uv_fs_impact[0],vmon3_uv_fs_impact[1],otp_pgood_vmon3};
//wire [2:0] vmon3_uv_temp = {3{vmonx_uv[1]}}&vmon3_uv_impact;
wire [2:0] vmon3_uv_temp = {3{vmon3_uv_pos}}&vmon3_uv_impact;
wire [2:0] vmon3_uv_temp2 = ((~vmon3_uv_temp)+1'b1) & vmon3_uv_temp; // one-hot
assign vmon3_uv_assert[0] = |vmon3_uv_temp2[0];
assign vmon3_uv_assert[1] = |vmon3_uv_temp2[1:0];
assign vmon3_uv_assert[2] = |vmon3_uv_temp2[2:0];

////// vmon4
reg  [1:0] vmon4_ov_r ;
wire vmon4_ov_pos = ~vmon4_ov_r[1]&vmon4_ov_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon4_ov_r <= #UDLY 2'b0;
    else
        vmon4_ov_r <= #UDLY {vmon4_ov_r[0],vmonx_ov[3]};
wire [2:0] vmon4_ov_assert; // fs0b,rstb,pgood
wire [2:0] vmon4_ov_impact = {vmon4_ov_fs_impact[0],vmon4_ov_fs_impact[1],otp_pgood_vmon4};
//wire [2:0] vmon4_ov_temp = {3{vmonx_ov[1]}}&vmon4_ov_impact;
wire [2:0] vmon4_ov_temp = {3{vmon4_ov_pos}}&vmon4_ov_impact;
wire [2:0] vmon4_ov_temp2 = ((~vmon4_ov_temp)+1'b1) & vmon4_ov_temp; // one-hot
assign vmon4_ov_assert[0] = |vmon4_ov_temp2[0];
assign vmon4_ov_assert[1] = |vmon4_ov_temp2[1:0];
assign vmon4_ov_assert[2] = |vmon4_ov_temp2[2:0];

reg  [1:0] vmon4_uv_r ;
wire vmon4_uv_pos = ~vmon4_uv_r[1]&vmon4_uv_r[0];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        vmon4_uv_r <= #UDLY 2'b0;
    else
        vmon4_uv_r <= #UDLY {vmon4_uv_r[0],vmonx_uv[3]};
wire [2:0] vmon4_uv_assert; // fs0b,rstb,pgood
wire [2:0] vmon4_uv_impact = {vmon4_uv_fs_impact[0],vmon4_uv_fs_impact[1],otp_pgood_vmon4};
//wire [2:0] vmon4_uv_temp = {3{vmonx_uv[1]}}&vmon4_uv_impact;
wire [2:0] vmon4_uv_temp = {3{vmon4_uv_pos}}&vmon4_uv_impact;
wire [2:0] vmon4_uv_temp2 = ((~vmon4_uv_temp)+1'b1) & vmon4_uv_temp; // one-hot
assign vmon4_uv_assert[0] = |vmon4_uv_temp2[0];
assign vmon4_uv_assert[1] = |vmon4_uv_temp2[1:0];
assign vmon4_uv_assert[2] = |vmon4_uv_temp2[2:0];

////// fccu
wire [2:0] fccu1_assert;
wire [2:0] fccu2_assert;
wire [2:0] fccu12_assert; // fs0b,rstb

assign fccu1_assert = fccu1 ? (fccu1_fs_impact ? 3'b110:3'b100):3'b0;
assign fccu2_assert = fccu2 ? (fccu2_fs_impact ? 3'b110:3'b100):3'b0;
assign fccu12_assert= fccu12? (fccu12_fs_impact? 3'b110:3'b100):3'b0;

///// errmon
reg  clr_ms;
reg  ena_ms;
reg  [14:0] errmon_cnt_ms ; // 20_000*50ns
wire flag_ms = (errmon_cnt_ms == MAX_CNT_10US*100-1);

reg  [5:0] max_ack_cnt   ;
reg  [5:0] errmon_ack_cnt; // 1~32ms
wire flag_ack_timeout = (errmon_ack_cnt==max_ack_cnt-1) & flag_ms;

wire [2:0] errmon_assert;
wire       errmon_flag  ;
assign errmon_flag = (!errmon_ack&flag_ack_timeout);
assign errmon_assert = errmon_flag ? (errmon_fs_impact ? 3'b110:3'b100):3'b0;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        ena_ms <= #UDLY 1'b0;
    else if(flag_ack_timeout)// timeout
        ena_ms <= #UDLY 1'b0;
    else if(errmon) // edge
        ena_ms <= #UDLY 1'b1;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        clr_ms <= #UDLY 1'b0;
    else if(clr_ms)
        clr_ms <= #UDLY 1'b0;
    else if(errmon || errmon_ack)
        clr_ms <= #UDLY 1'b1;
///// wwdt
//wd_fs_impact
reg [2:0] wd_err_max_assert; // fs0b , rstb , pgood
always @(*)
    if(!incr_a)
        wd_err_max_assert = 3'b000;
    else if(wd_fs_impact[1])
        wd_err_max_assert = 3'b110;
    else if(wd_fs_impact[0])
        wd_err_max_assert = 3'b100;
    else
        wd_err_max_assert = 3'b000;
// wrong/no wd refresh in INIT_FS
wire [2:0] wd_initfs_assert;
assign wd_initfs_assert = incr_b ? 3'b110:3'b000;
        
///// external RESET
wire [2:0] ext_rstb_assert ; // fs0b , rstb , pgood
reg  [2:0] ext_rstb_r      ;
wire      ext_rstb_pos     ;
assign ext_rstb_pos = ~ext_rstb_r[2] & ext_rstb_r[1];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        ext_rstb_r <= #UDLY 3'b000;
    else
        ext_rstb_r <= #UDLY {ext_rstb_r[1:0],ext_rstb};

assign ext_rstb_assert = ext_rstb_pos ? (otp_pgood_rstb ? 3'b011:3'b010):3'b000;

///// Fault error counter impact at intermediate value
// : a)no incr b) assert fs0b , rstb according to flt_err_impact
wire [2:0] flt_cnt_inter_assert;
assign flt_cnt_inter_assert[2] = (|flt_err_impact) ? flag_flt_equal_intr:1'b0;
assign flt_cnt_inter_assert[1] = (flt_err_impact[1])? flag_flt_more_intr:1'b0;
assign flt_cnt_inter_assert[0] = 1'b0;
///// RSTB short to high
wire [2:0] rstb_diag_assert ;
reg  [2:0] rstb_diag_r      ;
wire       rstb_diag_pos    ;

assign rstb_diag_pos = ~rstb_diag_r[2] & rstb_diag_r[1];
assign rstb_diag_assert = rstb_diag_pos ? 3'b100 : 3'b000;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        rstb_diag_r <= #UDLY 3'b000;
    else
        rstb_diag_r <= #UDLY {rstb_diag_r[1:0],rstb_diag};
///// FS0B short to high
wire [2:0] fs0b_diag_assert ;
reg  [2:0] fs0b_diag_r      ;
wire       fs0b_diag_pos    ;
assign fs0b_diag_pos = ~fs0b_diag_r[2] & fs0b_diag_r[1];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        fs0b_diag_r <= #UDLY 3'b000;
    else
        fs0b_diag_r <= #UDLY {fs0b_diag_r[1:0],fs0b_diag};
assign fs0b_diag_assert = fs0b_sc_high_cfg ? 3'b010:3'b000;
///// REG_CORRUPT
wire [2:0] reg_corrupt_assert;
reg [2:0] reg_corrupt_r;
wire      reg_corrupt_pos    ;
assign reg_corrupt_pos = ~reg_corrupt_r[2] & reg_corrupt_r[1];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        reg_corrupt_r <= #UDLY 3'b000;
    else
        reg_corrupt_r <= #UDLY {reg_corrupt_r[1:0],reg_corrupt};
assign reg_corrupt_assert = reg_corrupt_pos ? 3'b100 : 3'b000;

///// OTP_CORRUPT
//wire [2:0] otp_corrupt_assert;
reg [2:0] otp_corrupt_r;
wire      otp_corrupt_pos    ;
assign otp_corrupt_pos = ~otp_corrupt_r[2] & otp_corrupt_r[1];
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        otp_corrupt_r <= #UDLY 3'b000;
    else
        otp_corrupt_r <= #UDLY {otp_corrupt_r[1:0],otp_corrupt};
assign otp_corrupt_assert = otp_corrupt_pos ? 3'b100 : 3'b000;


/////////////////// increment & incr_vld ///////////////////
wire vcore_ov_incr = |vcore_ov_assert; // any assertion
wire vcore_uv_incr = |vcore_uv_assert; 
wire vddio_ov_incr = |vddio_ov_assert;
wire vddio_uv_incr = |vddio_uv_assert;
wire vmon1_ov_incr = |vmon1_ov_assert;
wire vmon2_ov_incr = |vmon2_ov_assert;
wire vmon3_ov_incr = |vmon3_ov_assert;
wire vmon4_ov_incr = |vmon4_ov_assert;
wire vmon1_uv_incr = |vmon1_uv_assert;
wire vmon2_uv_incr = |vmon2_uv_assert;
wire vmon3_uv_incr = |vmon3_uv_assert;
wire vmon4_uv_incr = |vmon4_uv_assert;
wire fccu1_incr    = |fccu1_assert   ;
wire fccu2_incr    = |fccu2_assert   ;
wire fccu12_incr   = |fccu12_assert  ;
wire errmon_incr   = |errmon_assert  ;
wire wd_err_max_incr = |wd_err_max_assert; // WD error counter = max value
wire wd_initfs_incr = |wd_initfs_assert; // include no/wrong wd refresh in INIT_FS
wire ext_rstb_incr  = ext_rstb_pos    ; // ext_rstb_assert
wire rstb_diag_incr = rstb_diag_pos  ;
wire fs0b_diag_incr = fs0b_diag_pos & (|fs0b_diag_assert)  ; //fs0b_diag_assert
wire reg_corrupt_incr = reg_corrupt_pos ;
wire otp_corrupt_incr = otp_corrupt_pos ;

assign fccu_err = |{fccu1_incr,fccu2_incr,fccu12_incr};

wire       incr_vld_w             ; // (TODO)
wire [4:0] incrment_w             ; // (TODO) ... according to the table.

assign incr_vld_w = |{vcore_ov_incr,vcore_uv_incr,vddio_ov_incr,vddio_uv_incr,vmon1_ov_incr,vmon2_ov_incr,
vmon3_ov_incr,vmon4_ov_incr,vmon1_uv_incr,vmon2_uv_incr,vmon3_uv_incr,vmon4_uv_incr,fccu1_incr,fccu2_incr, 
fccu12_incr,errmon_incr,wd_err_max_incr,wd_initfs_incr,ext_rstb_incr,rstb_diag_incr,fs0b_diag_incr,reg_corrupt_incr,otp_corrupt_incr};

assign increment_w = vcore_ov_incr+vcore_uv_incr+vddio_ov_incr+vddio_uv_incr+vmon1_ov_incr+vmon2_ov_incr+
vmon3_ov_incr+vmon4_ov_incr+vmon1_uv_incr+vmon2_uv_incr+vmon3_uv_incr+vmon4_uv_incr+fccu1_incr+fccu2_incr+ 
fccu12_incr+errmon_incr+wd_err_max_incr+wd_initfs_incr+ext_rstb_incr+rstb_diag_incr+fs0b_diag_incr+reg_corrupt_incr+otp_corrupt_incr;

always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
        incr_vld <= #UDLY 1'b0;
        increment <= #UDLY 'h0;
    end else begin
        incr_vld <= #UDLY incr_vld_w;
        increment <= #UDLY increment_w;
    end



/////////////////// Assert {fs0b,rstb,pgood} ///////////////////
wire [2:0] temp1_assert = {1'b0,rstb_req,1'b0}; // RSTB request by the MCU
wire [2:0] temp2_assert = {fs0b_req,1'b0,1'b0}; // FS0B request by the MCU
wire [2:0] temp3_assert = {goto_initfs,1'b0,1'b0};

wire [2:0] all_assert  ;

assign all_assert = vcore_ov_assert | vddio_ov_assert | vcore_uv_assert | vddio_uv_assert | 
                    vmon4_ov_assert | vmon3_ov_assert | vmon2_ov_assert | vmon1_ov_assert |
                    vmon4_uv_assert | vmon3_uv_assert | vmon2_uv_assert | vmon1_uv_assert |
                    fccu12_assert   | fccu1_assert    | fccu2_assert    | errmon_assert   |
                    wd_err_max_assert | flt_cnt_inter_assert | wd_initfs_assert | ext_rstb_assert |
                    temp1_assert    | rstb_diag_assert| fs0b_diag_assert| temp2_assert    |
                    temp3_assert    | reg_corrupt_assert | otp_corrupt_assert ;

assign fs0b_active  = all_assert[2]; // 1-assert
assign rstb_active  = all_assert[1];
assign pgood_active = all_assert[0];


always @(posedge clk or negedge rst_n)
    if(!rst_n)
        flt_err_cnt <= #UDLY 'h0;
    else if(incr_vld)
         if(flt_err_max)
             flt_err_cnt <= #UDLY max_flt_err_cnt ;
         else
             flt_err_cnt <= #UDLY flt_err_cnt + increment;
    else if(decr)
         if(flt_err_zero)
             flt_err_cnt <= #UDLY 'd0;
         else
             flt_err_cnt <= #UDLY flt_err_cnt - 1'b1;

always @(*) begin
    case(flt_err_cnt_limit)
        2'b00:begin
            max_flt_err_cnt = 'd2;
            intermediate_value = 'd1;
        end
        2'b01:begin
            max_flt_err_cnt = 'd6;
            intermediate_value = 'd3;
        end
        2'b10:begin
            max_flt_err_cnt = 'd8;
            intermediate_value = 'd4;
        end
        2'b11:begin
            max_flt_err_cnt = 'd12;
            intermediate_value = 'd6;
        end
        default: begin
            max_flt_err_cnt = 'd6;
            intermediate_value = 'd3;
        end
    endcase
end

always @(*)begin
    case(errmon_ack_time)
        2'b00  : max_ack_cnt = 'd1 ;
        2'b01  : max_ack_cnt = 'd8 ;
        2'b10  : max_ack_cnt = 'd16;
        2'b11  : max_ack_cnt = 'd32;
        default: max_ack_cnt = 'd8 ;
    endcase
end
//errmon_cnt_ms
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        errmon_cnt_ms <= #UDLY 'h0;
    else if(clr_ms)
        errmon_cnt_ms <= #UDLY 'h1;
    else if(ena_ms) begin
       if(flag_ms)
           errmon_cnt_ms <= #UDLY 'h0;
       else
           errmon_cnt_ms <= #UDLY errmon_cnt_ms + 1'b1;
    end

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        errmon_ack_cnt <= #UDLY 'h0;
    else if(clr_ms)
        errmon_ack_cnt <= #UDLY 'h0; 
    else if(ena_ms)
        if(flag_ack_timeout)
            errmon_ack_cnt <= #UDLY 'h0;
    else
        errmon_ack_cnt <= #UDLY errmon_ack_cnt + 1'b1;




endmodule
