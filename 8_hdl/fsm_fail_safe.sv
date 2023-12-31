module fsm_fail_safe#(
    parameter UDLY = 1,
    parameter MAX_CNT_10US   = 200
    parameter MAX_CNT_62P5US = 1250 
)(
    input    wire       clk            ,  // Clock 20MHz 50ns
    input    wire       clk_en         ,  // Clock Enable
    input    wire       rst_n          ,  // rst_n = (PORB_FS==1) && (Vbos>Vbos_por)  inspect!
    ///////// from pins
    input    wire       fccu1_pin      , // (TODO) debouce ?
    input    wire       fccu2_pin      , // (TODO) debouce ?
    input    wire       errmon_pin     , // (TODO) debouce ?
  //input    wire       fs0b_in        , // replaced by xxx_sns
  //input    wire       rstb_in        ,
  //input    wire       pgood_in       ,
    input    wire       dbg_vld        ,
  //output   wire       fs0b_out       , // replaced by xxx_drv
  //output   wire       rstb_out       ,
  //output   wire       pgood_out      ,
    ///////// from abist lbist
    input    wire       lbist_done     ,
    input    wire       lbist_ok       ,
    input    wire       abist1_done    ,
    input    wire       abist1_ok      ,
    input    wire       abist2_done    ,
    input    wire       abist2_ok      ,
    ///////// from fsm_main
    input    wire       fs_enable      ,
    output   reg        dfs            ,
    output   reg        fs_ready       ,
    output   reg        valid_wd       ,
    ////////  from analog
    input    wire       vcoremon_ov    ,
    input    wire       vddio_ov       ,
    input    wire [3:0] vmonx_ov       , // vmon4 ~ vmon1
    input    wire       vcoremon_uv    ,
    input    wire       vddio_uv       ,
    input    wire [3:0] vmonx_uv       , // vmon4 ~ vmon1
    ////////  from registers            
    input    wire       rstb_dur       , // 10ms(0) , 1ms(1)
    input    wire       fs0b_sc_high_cfg,// Assert RSTB in case of a short to high detected on FS0B)
    input    wire       dis_8s         , // disable 8s timer
    input    wire       clk_mon_dis    , // disable clock monitor
    input    wire       dbg_exit       , // (TODO)??? leave debug mode
    input    wire       dbg_mode       , // DEBUG mode(1)
    input    wire       otp_corrupt    , // (TODO) OTP CRC error detected
    input    wire       reg_corrupt    , // (TODO) mismatch between FS_I_REG / FS_I_NOT_REG 
    output   wire [3:0] fsm_fs_state   , // 
    input    wire       goto_initfs    ,
    input    wire       flag_release_fs0b, // (TODO: REG_Release_fs0b filled with ongoing WD_SEED 
                                           // reversed and complemented)
    // pgood
    input    wire       pgood_sns      , // (TOD?) Sense of PGOOD pad (in pin)
    output   wire       pgood_drv      , // (TOD?) PGOOD driver -digital command , no need wiring to Register!
    output   wire       pgood_diag     , // (TOD?) Report a PGOOD Short to High: xx_sns is level 1 when xx_drv assert 0
    output   wire       pgood_event    , // (TOD?) Report a PGOOD event ??
    // rstb
    input    wire       rstb_sns       , // (TOD?) Sense of RSTB pad (in pin)
    output   wire       rstb_drv       , // (TOD?) RSTB driver - digital command  
    output   wire       rstb_diag      , // (TOD?) Report a RSTB Short to High
    output   wire       rstb_event     , // (TOD?) Report a RSTB event ??
    output   wire       ext_rstb       , // (TOD?) Report an external RESET
    input    wire       rstb_req       , // (TOD?) RSTB pulse request by the MCU
    // fs0b
    input    wire       fs0b_sns       , // (TOD?) Sense of FS0B pad (in pin)
    output   wire       fs0b_drv       , // (TOD?) FS0B driver - digital command 
    output   wire       fs0b_diag      , // (TOD?) Report a RSTB Short to High
    input    wire       fs0b_req       , // (TOD?) FS0B pulse request by the MCU
    
    input    wire [1:0] vcoremon_ov_fs_impact, // (TODO) xxx_fs_impact is only configured when INIT_FS
    input    wire [1:0] vcoremon_uv_fs_impact, // (TODO) xxx_fs_impact ...
    input    wire       vcoremon_abist2      ,
    input    wire [1:0] vddio_ov_fs_impact   ,
    input    wire [1:0] vddio_uv_fs_impact   ,
    input    wire       vddio_abist2         ,
    input    wire [1:0] vmon1_ov_fs_impact   ,
    input    wire [1:0] vmon1_uv_fs_impact   ,
    input    wire       vmon1_abist2         ,
    input    wire [1:0] vmon2_ov_fs_impact   ,
    input    wire [1:0] vmon2_uv_fs_impact   ,
    input    wire       vmon2_abist2         ,
    input    wire [1:0] vmon3_ov_fs_impact   ,
    input    wire [1:0] vmon3_uv_fs_impact   ,
    input    wire       vmon3_abist2         ,
    input    wire [1:0] vmon4_ov_fs_impact   ,
    input    wire [1:0] vmon4_uv_fs_impact   ,
    input    wire       vmon4_abist2         ,
    // wwdt core
    input    wire [3:0] wdw_period           ,
    input    wire [2:0] wdw_dc               ,
    input    wire [3:0] wdw_recovery         ,
    input    wire       wdw_vld              , //(TODO) wdw_right is valid
    input    wire       wdw_right            , //(TODO) wd_answer is correct, wd_seed,wd_answer
    output   wire       wdw_refresh          , //(TODO) wdw_right is acknowledged by wwdt_core
    input    wire [1:0] wd_err_limit         ,
    input    wire [1:0] wd_rfr_limit         ,
    input    wire [1:0] wd_fs_impact         ,
    output   wire [3:0] wd_err_cnt           ,
    output   wire [2:0] wd_rfr_cnt           ,
    output   wire       bad_wd_data          , // 0-good wd fresh 1-bad wd fresh,error in the DATA
    output   wire       bad_wd_timing        , // 0-good wd fresh 1-bad wd fresh,wrong window or in timeout
    // fault summary
    input    wire [1:0] flt_err_limit        ,
    input    wire [1:0] flt_err_impact       ,
    output   wire [3:0] flt_err_cnt          ,
    //----fccu
    input    wire [1:0] fccu_cfg             , // 00-no monitoring 01-pair 10-fccu1&fccu2 11-fccu1 only 
    input    wire       fccu12_flt_pol       , // fault polarity 0-!fccu1&fccu2 1-fccu1&!fccu2 
    input    wire       fccu1_flt_pol        , // fault polarity 0-!fccu1 1-fccu1
    input    wire       fccu2_flt_pol        , // fault polarity 0-!fccu2 1-fccu2
    input    wire       fccu12_fs_impact     , // 0-fs0b assert only , 1-fs0b and rstb assert
    input    wire       fccu1_fs_impact      , // 0-fs0b assert only , 1-fs0b and rstb assert
    input    wire       fccu2_fs_impact      , // 0-fs0b assert only , 1-fs0b and rstb assert
    output   wire       fccu1_RT             , // Report FCCU1 pin level
    output   wire       fccu2_RT             , // Report FCCU2 pin level
    //----errmon
    input    wire       errmon_flt_pol       ,
    input    wire [1:0] errmon_ack_time      ,
    input    wire       errmon_fs_impact     ,
    input    wire       errmon_ack           , // (TODO) Error acknowledged by MCU,Reset acknowledgment counter: errmon_dect bit is read!
    output   wire       errmon_dect          , // (TODO) Report an error in the ERRMON input
    output   wire       errmon_sta           , // (TODO) Report ERRMON pin level

    // interrupt mask ... INT_INH_...

                         
    ////////  from otp
    input    wire [7:0] otp_cfg_asil   , // {wd_dis,wd_sel,errmon_en,fccu_en,vmon4~1_en}
    input    wire [5:0] otp_cfg_abist1 , // {vmon4~vmon1,vddio,vcore}
    input    wire [6:0] otp_cfg_pgood  , // pgood_{rstb,vmon4~1,vddio,vcore}
    // otp_cfg_i2c
    input    wire       flt_recovery_en, // fault recovery strategy enable , to wwdt_core.v
           //wire [3:0] fs_i2cdevaddr  , // device i2c address
    // under/over voltage threshold config ??? Directly to analog
    input    wire [7:0] otp_cfg_uvov_1 , // vcore monitoring voltage
    input    wire [7:0] otp_cfg_uvov_2 , // vddio,vcore over voltage threshold
    input    wire [5:0] otp_cfg_uvov_3 , // 
    input    wire [7:0] otp_cfg_uvov_4 , // vmon2,vmon1 over voltage threshold
    input    wire [7:0] otp_cfg_uvov_5 , // vmon4,vmon3 over voltage threshold
    input    wire [7:0] otp_cfg_uvov_6 , // vddio,vcore over voltage threshold
    input    wire [7:0] otp_cfg_uvov_7 , // vmon2,vmon1 under voltage threshold
    input    wire [7:0] otp_cfg_uvov_8 , // vmon4,vmon3 under voltage threshold
    // filtering time ??? Directly to analog
    input    wire [1:0] vcore_uv_dglt  ,
    input    wire       vcore_ov_dglt  ,
    input    wire [1:0] vddio_uv_dglt  ,
    input    wire       vddio_ov_dglt  ,
    input    wire [1:0] vmonx_uv_dglt  , // Vmonx undervlotage filtering time
    input    wire       vmonx_ov_dglt    // Vmonx overvoltage filtering time
    //////// 
);

localparam FS_PWRDN      = 4'b0001 ;
localparam FS_STDBY      = 4'b0010 ;
localparam FS_LBIST      = 4'b0011 ;
localparam FS_READY      = 4'b0100 ;
localparam WAIT_ABIST1   = 4'b0101 ;
localparam ABIST1        = 4'b1111 ;//
localparam RELEASE_RESET = 4'b1011 ;//
localparam INIT_FS       = 4'b0110 ;// 0110
localparam WAIT_ABIST2   = 4'b0111 ;// 0111
localparam ABIST2        = 4'b1000 ;// 1000
localparam ASSERT_FS0B   = 4'b1001 ;// 1001
localparam ASSERT_PGOOD  = 4'b1100 ;
localparam ASSERT_RSTB   = 4'b1101 ;
localparam NORMAL_FS     = 4'b1010 ; // 1010

reg [3:0] nx_st,st;

assign fsm_fs_state = st;

wire      flag_after_INITFS      = comm_st;
wire      comm_st                = (st==WAIT_ABIST2)   || (st==ABIST2)      || (st==ASSERT_FS0B)  || (st==NORMAL_FS);
wire      flag_after_ABIST1_1    = (st==RELEASE_RESET) || (st==INIT_FS)     || (st==ASSERT_RSTB)  || comm_st;// include RSTB
wire      flag_after_ABIST1_2    = (st==RELEASE_RESET) || (st==INIT_FS)     || comm_st ;// exclude PGOOD
wire      flag_after_WAIT_ABIST1 = (st==WAIT_ABIST1)   || (st==ABIST1)      || (st==RELEASE_RESET)|| (st==INIT_FS)||
                                   (st==ASSERT_RSTB)   || (st==ASSERT_PGOOD)|| comm_st;


reg [7:0] cnt_10us  ;
wire      flag_10us = (cnt_10us==MAX_CNT_10US-1);

wire [3:0] abist1_vmonx;
wire       abist1_vddio;
wire       abist1_vcore;
assign abist1_vmonx = otp_cfg_abist1[5:2]; // vmonx assigned to abist1
assign abist1_vddio = otp_cfg_abist1[1];
assign abist1_vcore = otp_cfg_abist1[0];

wire       wd_dis   ;
wire       wd_sel   ;
wire       errmon_en;
wire       fccu_en  ;
wire [3:0] vmonx_en ;

assign wd_dis    = otp_cfg_asil[7];
assign wd_sel    = otp_cfg_asil[6];
assign errmon_en = otp_cfg_asil[5];
assign fccu_en   = otp_cfg_asil[4];
assign vmonx_en  = otp_cfg_asil[3:0];


wire      abist1_rdy; // (Vxx_uv=0 and Vxx_ov=0) or !Vxx_ABIST1_OTP
wire      abist2_rdy; // (Vxx_uv=0 and Vxx_ov=0) or !Vxx_ABIST2_SPI

wire      vcore_sta = ((~vcoremon_uv) & (~vcoremon_ov));
wire      vcore_abist1_otp = abist1_vcore;
wire      vcore_abist1_rdy = vcore_sta|(~vcore_abist1_otp);
wire      vcore_abist2_rdy = vcore_sta|(~vcoremon_abist2);
wire      vddio_sta = ((~vddio_uv) & (~vddio_ov));
wire      vddio_abist1_otp = abist1_vddio;
wire      vddio_abist1_rdy = vddio_sta|(~vddio_abist1_otp);
wire      vddio_abist2_rdy = vddio_sta|(~vddio_abist2);
wire [3:0] vmonx_sta = ((~vmonx_uv) & (~vmonx_ov));
wire [3:0] vmonx_abist1_otp = vmonx_en & abist1_vmonx ; // vmonx is enable and assigned to abist1
wire [3:0] vmonx_abist1_rdy = vmonx_sta|(~vmonx_abist1_otp); // 
wire [3:0] vmonx_abist2_rdy = vmonx_sta|(~{vmon4_abist2,vmon3_abist2,vmon2_abist2,vmon1_abist2});

assign    abist1_rdy = &{vcore_abist1_rdy,vddio_abist1_rdy,vmonx_abist1_rdy};
assign    abist2_rdy = &{vcore_abist2_rdy,vddio_abist2_rdy,vmonx_abist2_rdy};

//[6:0]otp_cfg_pgood //pgood_{rstb,vmon4~1,vddio,vcore}
wire otp_pgood_rstb  = otp_cfg_pgood[6];
wire otp_pgood_vmon4 = otp_cfg_pgood[5];
wire otp_pgood_vmon3 = otp_cfg_pgood[4];
wire otp_pgood_vmon2 = otp_cfg_pgood[3];
wire otp_pgood_vmon1 = otp_cfg_pgood[2];
wire otp_pgood_vddio = otp_cfg_pgood[1];
wire otp_pgood_vcore = otp_cfg_pgood[0];



wire      fs_release_fs0b   ; // a)lbist,abist1&2 ok b)flt_err_cnt=0 c)flag_release_fs0b
assign    fs_release_fs0b = (lbist_ok&abist1_ok&abist2_ok) && (flt_err_cnt=='d0) && flag_release_fs0b;

reg        clr_ms            ;
reg        ena_ms            ;
reg [14:0] cnt_ms            ; // 1ms
reg        ena_10ms          ;
reg [3:0]  cnt_msx10         ; // 10ms
reg [12:0] cnt_msx8000       ; // 8s

wire       flag_ms = (cnt_ms==MAX_CNT_10US*100-1);
wire       flag_10ms = flag_ms & (cnt_msx10=='d9);
wire       flag_flt_max;
//wire       flag_rstb0_over8s = (cnt_msx8000 >= 'd8000);
wire       flag_rstb0_over8s = (cnt_msx8000 >= 'd1000);//just for test!
wire       flag_rstb_expired ; // according to RSTB_DUR
assign flag_rstb_expired = rstb_dur ? flag_ms:flag_10ms;

///////// from fault_summary
wire    active_fs0b      ; 
wire    active_fs0b1     ; // from fault summary
wire    active_fs0b2     ; // from wwdt core
wire    active_rstb      ;
wire    active_rstb1     ; // from fault summary
wire    active_rstb2     ; // from wwdt core
wire    active_pgood     ; 
//wire [3:0] flt_err_cnt   ;
wire    wdw_over_256ms   ;
wire    wdw_over_recovery;

assign  active_fs0b2 = wdw_over_256ms | wdw_over_recovery;
assign  active_rstb2 = wdw_over_256ms | wdw_over_recovery;
assign  active_rstb = active_rstb1 | active_rstb2;
assign  active_fs0b = active_fs0b1 | active_fs0b2;
////////  from watch dog
wire    wd_ok            ; //
wire    good_wdw         ;
wire    init_fs_done     ;
wire    flag_init_fs     ;
assign wd_ok = init_fs_done  ;
assign flag_init_fs = (st==INIT_FS);
////////  from fsm       ;
reg    release_pgood    ;
reg    release_rstb     ;
reg    release_fs0b     ;
always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
        release_pgood <= #UDLY 1'b0;
        release_rstb  <= #UDLY 1'b0;
    end else if((st==ABIST1) && abist1_done) begin // ABIST1 => RELEASE_RESET
        release_pgood <= #UDLY 1'b1;
        release_rstb  <= #UDLY 1'b1; 
    end else if((st==ASSERT_RSTB) && flag_rstb_expired) begin // ASSERT_RSTB => RELEASE_RESET
        release_pgood <= #UDLY 1'b1;
        release_rstb  <= #UDLY 1'b1; 
    end else if(active_pgood || active_rstb) begin
        release_pgood <= #UDLY 1'b0;
        release_rstb  <= #UDLY 1'b0; 
    end
always @(posedge clk or negedge rst_n)
    if(!rst_n) 
        release_fs0b <= #UDLY 1'b0;
    else if((!dbg_mode) & fs_release_fs0b)
        release_fs0b <= #UDLY 1'b1;
    else if(active_fs0b)
        release_fs0b <= #UDLY 1'b0;

assign pgood_drv = release_pgood ;
assign rstb_drv  = release_rstb  ;
assign fs0b_drv  = release_fs0b  ;

// update xxx_diag when active_xxx pulls up
reg  active_pgood_r  ;
reg  active_rstb_r   ;
reg  active_fs0b_r   ;
wire active_pgood_pos;
wire active_rstb_pos ;
wire active_fs0b_pos ;

assign active_pgood_pos = ~active_pgood_r & active_pgood ;
assign active_rstb_pos  = ~active_rstb_r  & active_rstb  ;
assign active_fs0b_pos  = ~active_fs0b_r  & active_fs0b  ;


always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
        active_pgood_r <= #UDLY 1'b0; 
        active_rstb_r  <= #UDLY 1'b0; 
        active_fs0b_r  <= #UDLY 1'b0; 
    end else begin
        active_pgood_r <= #UDLY active_pgood ; 
        active_rstb_r  <= #UDLY active_rstb  ; 
        active_fs0b_r  <= #UDLY active_fs0b  ;
    end

assign pgood_diag = (active_pgood_pos) ? (!pgood_drv & pgood_sns) : 1'b0; // 
assign rstb_diag  = (active_rstb_pos ) ? (!rstb_drv  & rstb_sns ) : 1'b0; // 
assign fs0b_diag  = (active_fs0b_pos ) ? (!fs0b_drv  & fs0b_sns ) : 1'b0; // 

assign rstb_short_to_high = rstb_diag ;
assign fs0b_short_to_high = fs0b_diag ;

reg  ext_rstb_r ;
//assign ext_rstb = rstb_drv & !rstb_sns ;
assign ext_rstb = ext_rstb_r;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        ext_rstb_r <= #UDLY 1'b0;
    else if((st==ABIST1) && abist1_done)
        ext_rstb_r <= rstb_drv & !rstb_sns;

assign pgood_event = active_pgood ;
assign rstb_event  = active_rstb  ;

// 8s timer RSTB
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        dfs <= #UDLY 1'b0;
    else if(flag_rstb0_over8s || flag_flt_max)
        dfs <= #UDLY 1'b1;
    else 
        dfs <= #UDLY 1'b0;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        fs_ready <= #UDLY 1'b0;
    else if(fs_enable)
        fs_ready <= #UDLY 1'b0;
    else if((st==FS_READY) && lbist_done && dbg_vld)
        fs_ready <= #UDLY 1'b1;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        st <= #UDLY FS_PWRDN;
    else if(!fs_enable && flag_after_WAIT_ABIST1)
        st <= #UDLY FS_STDBY;
    else if(active_pgood && flag_after_ABIST1_1)
        st <= #UDLY ASSERT_PGOOD;
    else if(active_rstb && flag_after_ABIST1_2)
        st <= #UDLY ASSERT_RSTB;
    else if(goto_initfs && flag_after_INITFS)
        st <= #UDLY INIT_FS;
    else
        st <= #UDLY nx_st  ;

always @(*) begin
    case(st)
        FS_PWRDN      : begin 
            nx_st = FS_STDBY;
        end 
        FS_STDBY      : begin 
            nx_st = flag_10us ? FS_LBIST : FS_STDBY;
        end 
        FS_LBIST      : begin
            nx_st = (!dbg_vld&lbist_done) ? FS_READY : FS_LBIST;
        end 
        FS_READY      : begin
            nx_st = fs_enable ? WAIT_ABIST1 : FS_READY;
        end 
        WAIT_ABIST1   : begin
            nx_st = abist1_rdy ? ABIST1 : WAIT_ABIST1;
        end 
        ABIST1        : begin
            nx_st = abist1_done ? RELEASE_RESET : ABIST1;
        end 
        RELEASE_RESET : begin
            nx_st = (pgood_sns & rstb_sns) ? INIT_FS : RELEASE_RESET;
        end 
        INIT_FS       : begin
            nx_st = wd_ok ? WAIT_ABIST2 : INIT_FS;
        end 
        WAIT_ABIST2   : begin
            nx_st = abist2_rdy ? ABIST2 : WAIT_ABIST2;
        end 
        ABIST2        : begin
            nx_st = (abist1_ok & abist2_ok) ? ASSERT_FS0B : ABIST2 ;
        end 
        ASSERT_FS0B    : begin
            nx_st = ((!dbg_mode) & fs_release_fs0b) ? NORMAL_FS : ASSERT_FS0B;
        end 
        ASSERT_PGOOD   : begin
            nx_st = flag_rstb_expired ? WAIT_ABIST1 : ASSERT_PGOOD; 
        end  
        ASSERT_RSTB    : begin
            nx_st = flag_rstb_expired ? RELEASE_RESET : ASSERT_RSTB; 
        end 
        NORMAL_FS     : begin
            nx_st = active_fs0b ? ASSERT_RSTB : NORMAL_FS;
        end 
        default       : begin
            nx_st = FS_PWRDN ;
        end
    endcase
end

// wait 10us
always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        cnt_10us <= #UDLY 'h0;
    else if(st==FS_STDBY)
        if(flag_10us)
            cnt_10us <= #UDLY 'h0;
        else
            cnt_10us <= #UDLY cnt_10us + 1'b1;
// 1ms counter
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        cnt_ms <= #UDLY 'h0;
    else if(clr_ms)
        cnt_ms <= #UDLY 'h1;
    else if(ena_ms) begin
        if(flag_ms)
            cnt_ms <= #UDLY 'h0;
        else 
            cnt_ms <= #UDLY cnt_ms + 1'b1;
    end
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        ena_ms <= #UDLY 1'b0;
    else if(!fs_enable || dis_8s)
        ena_ms <= #UDLY 1'b0;
    else if((st==WAIT_ABIST1) && (!dbg_vld))
        ena_ms <= #UDLY 1'b1;
wire st_pgood_assert = (st==ASSERT_PGOOD);
wire st_rstb_assert  = (st==ASSERT_RSTB );
reg  st_pgood_assert_r  ;
reg  st_rstb_assert_r   ;
wire flag_pgood_assert = ~st_pgood_assert_r & st_pgood_assert;
wire flag_rstb_assert  = ~st_rstb_assert_r  & st_rstb_assert ;

always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
       st_pgood_assert_r <= #UDLY 1'b0;
       st_rstb_assert_r  <= #UDLY 1'b0;
    end else begin
       st_pgood_assert_r <= #UDLY st_pgood_assert ;
       st_rstb_assert_r  <= #UDLY st_rstb_assert  ;
    end


always @(posedge clk or negedge rst_n)
    if(!rst_n)
        clr_ms <= #UDLY 1'b0;
    else if(clr_ms)
        clr_ms <= #UDLY 1'b0;
    else if( flag_pgood_assert || flag_rstb_assert )
        clr_ms <= #UDLY 1'b1;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        ena_10ms <= #UDLY 1'b0;
    else if(ena_10ms && flag_10ms)
        ena_10ms <= #UDLY 1'b0;
    else if(flag_pgood_assert || flag_rstb_assert)
        ena_10ms <= #UDLY !rstb_dur;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        cnt_msx10 <= #UDLY 'd0;
    else if(ena_10ms) begin
        if(clr_ms || flag_10ms)
            cnt_msx10 <= #UDLY 'd0;
        else if(flag_ms)
            cnt_msx10 <= #UDLY cnt_msx10 + 1'b1;
    end

// detect rstb stucks at 0 over 8s
reg        rstb_level0 ;
reg  [1:0] rstb_in_r   ;
wire       rstb_in_neg ;
wire       rstb_in_pos ;
assign rstb_in_pos = ~rstb_in_r[1] & rstb_in_r[0];
assign rstb_in_neg = ~rstb_in_r[0] & rstb_in_r[1];

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        rstb_in_r <= #UDLY 2'b0;
    else
        rstb_in_r <= #UDLY {rstb_in_r[0],rstb_sns};
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        rstb_level0 <= #UDLY 1'b0;
    else if(rstb_in_pos)
        rstb_level0 <= #UDLY 1'b0;
    else if(rstb_in_neg)
        rstb_level0 <= #UDLY 1'b1;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        cnt_msx8000 <= #UDLY 'h0;
    else if(rstb_in_neg || rstb_in_pos)
        cnt_msx8000 <= #UDLY 'h0;
    else if(flag_rstb0_over8s)
        cnt_msx8000 <= #UDLY cnt_msx8000;
    else if(rstb_level0 && flag_ms)
        cnt_msx8000 <= #UDLY cnt_msx8000 + 1'b1;

//// ============= instantiate module ============= //// 
//----fccu
assign fccu1_RT = fccu1_pin ;
assign fccu2_RT = fccu2_pin ;
reg [3:0] fccu1_r;
reg [3:0] fccu2_r;
always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
        fccu2_r <= #UDLY 4'b0;
        fccu1_r <= #UDLY 4'b0;
    end else begin
        fccu2_r <= #UDLY {fccu2_r[2:0],fccu2_pin};
        fccu1_r <= #UDLY {fccu1_r[2:0],fccu1_pin};
    end
wire fccu1_pos = ~fccu1_r[3] & fccu1_r[2];
wire fccu2_pos = ~fccu2_r[3] & fccu2_r[2];
wire fccu1_neg = ~fccu1_r[2] & fccu1_r[3];
wire fccu2_neg = ~fccu2_r[2] & fccu2_r[3];

wire fccu1_sta  =  fccu1_flt_pol ? fccu1_pos : fccu1_neg;
wire fccu2_sta  =  fccu2_flt_pol ? fccu2_pos : fccu2_neg;
wire fccu12_sta = fccu12_flt_pol ? (fccu1_pos&fccu2_neg):(fccu1_neg&fccu2_pos);

reg fccu1_in ;
reg fccu2_in ;
reg fccu12_in;
always @(*) 
    if(fccu_en) begin
       case(fccu_cfg)
          2'b00 : {fccu1_in,fccu2_in,fccu12_in} = 3'b0;
          2'b01 : {fccu1_in,fccu2_in,fccu12_in} = {2'b0,fccu12_sta};
          2'b10 : {fccu1_in,fccu2_in,fccu12_in} = {fccu1_sta,fccu2_sta,1'b0};
          2'b11 : {fccu1_in,fccu2_in,fccu12_in} = {fccu1_sta,2'b0};
          default: {fccu1_in,fccu2_in,fccu12_in} = 3'b0;    
       endcase
    end else begin
       {fccu1_in,fccu2_in,fccu12_in} = 3'b0;
    end
//----errmon
//errmon_en;
reg [3:0] errmon_r;
always @(posedge clk or negedge rst_n)
    if(!rst_n) 
        errmon_r <= #UDLY 4'b0;
    else 
        errmon_r <= #UDLY {errmon_r[2:0],errmon_pin};

wire errmon_pos = ~errmon_r[3] & errmon_r[2];
wire errmon_neg = ~errmon_r[2] & errmon_r[3];

wire errmon_in = errmon_en ? (errmon_flt_pol ? errmon_pos:errmon_neg):1'b0;

fault_summary u_flt_sum(/*autoinst*/
        .clk                      (clk                           ), //input
        .clk_en                   (clk_en                        ), //input
        .rst_n                    (rst_n                         ), //input
        .fs0b_active              (active_fs0b1                  ), //output 
        .rstb_active              (active_rstb1                  ), //output 
        .pgood_active             (active_pgood                  ), //output 
        .flt_err_cnt              (flt_err_cnt[3:0]              ), //output
        .flag_flt_max             (flag_flt_max                  ), //output
        /////// from pins & analog
        .vcoremon_ov              (vcoremon_ov                   ), //input
        .vddio_ov                 (vddio_ov                      ), //input
        .vmonx_ov                 (vmonx_ov                      ), //input
        .vcoremon_uv              (vcoremon_uv                   ), //input
        .vddio_uv                 (vddio_uv                      ), //input
        .vmonx_uv                 (vmonx_uv                      ), //input
        .fccu1                    (fccu1_in                      ), //input
        .fccu2                    (fccu2_in                      ), //input
        .fccu12                   (fccu12_in                     ), //input
        .fccu_err                 (fccu_err                      ), //output
        .errmon                   (errmon_in                     ), //input
        .errmon_ack               (errmon_ack                    ), //input
        .errmon_ack_time          (errmon_ack_time[1:0]          ), //input
        /////// wwdt core
        .incr_a                   (incr_a                        ), //input
        .incr_b                   (incr_b                        ), //input
        .decr                     (decr                          ), //input
        /////// from register
        .ext_rstb                 (ext_rstb                      ), //input
        .rstb_req                 (rstb_req                      ), //input
        .rstb_diag                (rstb_short_to_high            ), //input
        .fs0b_diag                (fs0b_short_to_high            ), //input
        .fs0b_sc_high_cfg         (fs0b_sc_high_cfg              ), //input
        .fs0b_req                 (fs0b_req                      ), //input
        .reg_corrupt              (reg_corrupt                   ), //input
        .otp_corrupt              (otp_corrupt                   ), //input
        .goto_initfs              (goto_initfs                   ), //input
        .vcoremon_ov_fs_impact    (vcoremon_ov_fs_impact[1:0]    ), //input
        .vcoremon_uv_fs_impact    (vcoremon_uv_fs_impact[1:0]    ), //input
        .vddio_ov_fs_impact       (vddio_ov_fs_impact[1:0]       ), //input
        .vddio_uv_fs_impact       (vddio_uv_fs_impact[1:0]       ), //input
        .vmon1_ov_fs_impact       (vmon1_ov_fs_impact[1:0]       ), //input
        .vmon1_uv_fs_impact       (vmon1_uv_fs_impact[1:0]       ), //input
        .vmon2_ov_fs_impact       (vmon2_ov_fs_impact[1:0]       ), //input
        .vmon2_uv_fs_impact       (vmon2_uv_fs_impact[1:0]       ), //input
        .vmon3_ov_fs_impact       (vmon3_ov_fs_impact[1:0]       ), //input
        .vmon3_uv_fs_impact       (vmon3_uv_fs_impact[1:0]       ), //input
        .vmon4_ov_fs_impact       (vmon4_ov_fs_impact[1:0]       ), //input
        .vmon4_uv_fs_impact       (vmon4_uv_fs_impact[1:0]       ), //input
        //
        .fccu12_fs_impact         (fccu12_fs_impact              ), //input
        .fccu1_fs_impact          (fccu1_fs_impact               ), //input
        .fccu2_fs_impact          (fccu2_fs_impact               ), //input
        .errmon_fs_impact         (errmon_fs_impact              ), //input
        .wd_fs_impact             (wd_fs_impact[1:0]             ), //input
        .flt_err_impact           (flt_err_impact[1:0]           ), //input
        //
        .flt_err_cnt_limit        (flt_err_cnt_limit[1:0]        ), //input
        /////// from otp
        .otp_pgood_rstb           (otp_pgood_rstb                ), //input
        .otp_pgood_vmon4          (otp_pgood_vmon4               ), //input
        .otp_pgood_vmon3          (otp_pgood_vmon3               ), //input
        .otp_pgood_vmon2          (otp_pgood_vmon2               ), //input
        .otp_pgood_vmon1          (otp_pgood_vmon1               ), //input
        .otp_pgood_vddio          (otp_pgood_vddio               ), //input
        .otp_pgood_vcore          (otp_pgood_vcore               )  //input
        //INST_DEL: Port FS0B has been deleted.
        //INST_DEL: Port RSTB has been deleted.
        //INST_DEL: Port PGOOD has been deleted.
    );
// a)wd_dis b) (init_fs & wd_ok) wdw_period=0;

wire wd_vld_state  = (st==WAIT_ABIST2)||(st==ABIST2)||(st==ASSERT_FS0B)||(st==NORMAL_FS);
//reg  valid_wd ;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        valid_wd <= #UDLY 1'b0;
    else if(wd_dis)
        valid_wd <= #UDLY 1'b0;
    else if(wd_ok && (wdw_period!='d0))
        valid_wd <= #UDLY 1'b1;
    else if(!wd_vld_state)
        valid_wd <= #UDLY 1'b0;
    
wire  good_wdw,bad_wdw;
assign wdw_refresh = good_wdw | bad_wdw;
wwdt_core #(
    .UDLY           (UDLY          ),
    .MAX_CNT_62P6US (MAX_CNT_62P5US))
u_wwdt_core(/*autoinst*/
        .clk                    (clk                            ), //input
        .clk_en                 (clk_en                         ), //input
        .rst_n                  (rst_n                          ), //input
        /////// from register
        .wdw_period             (wdw_period[3:0]                ), //input
        .wdw_dc                 (wdw_dc[2:0]                    ), //input
        .wdw_recovery           (wdw_recovery[3:0]              ), //input
        //input    wire [15:0] wdw_seed      ,
        //input    wire [15:0] wdw_answer    ,
        .wdw_right              (wdw_right                      ), //input
        .wdw_vld                (wdw_vld                        ), //input
        /////// from otp
        .wd_err_limit           (wd_err_limit[1:0]              ), //input
        .wd_rfr_limit           (wd_rfr_limit[1:0]              ), //input
        //input    wire      flt_recovery_en , // The fault recovery strategy is enabled
        /////// fail-safe <-> wwdt
        .wd_off                 (!valid_wd                      ), //input
        .wd_err_cnt             (wd_err_cnt[3:0]                ), //output
        .wd_rfr_cnt             (wd_rfr_cnt[2:0]                ), //output
        .flag_init_fs           (flag_init_fs                   ), //input
        .init_fs_done           (init_fs_done                   ), //output
        .wdw_over_256ms         (wdw_over_256ms                 ), //output
        .wdw_over_recovery      (wdw_over_recovery              ), //output
        .flag_initfs_done       (valid_wd                       ), //input
        //
        .fccu_err               (fccu_err                       ), //input any fccu error
        /////// wwdt --> Fault summary
        .wdw_sta                (wdw_sta                        ), //output
        //output   wire    incr              , // FLT_ERR_CNT +1   
        .incr_a                 (incr_a                         ), //output
        .incr_b                 (incr_b                         ), //output
        .decr                   (decr                           ), //output
        .good_wdw               (good_wdw                       ), //output
        .bad_wdw                (bad_wdw                        ), //output
        .bad_wd_data            (bad_wd_data                    ), //output
        .bad_wd_timing          (bad_wd_timing                  )  //output
    );

                                
endmodule
