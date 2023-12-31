module wwdt_core #(
    parameter UDLY = 1,
    parameter MAX_CNT_62P5US = 1250
)(
    input    wire    clk               ,  // Clock 20MHz 50ns
    input    wire    clk_en            ,  // Clock Enable
    input    wire    rst_n             ,  // rst_n = (PORB_FS==1) && (Vbos>Vbos_por)  inspect!
    /////// from register
    input    wire [3:0]  wdw_period    ,
    input    wire [2:0]  wdw_dc        , // duty cycle
    input    wire [3:0]  wdw_recovery  ,
    //input    wire [15:0] wdw_seed      ,
    //input    wire [15:0] wdw_answer    ,
    input    wire        wdw_right     ,
    input    wire        wdw_vld       ,
    /////// from otp
    input    wire [1:0]  wd_err_limit  ,
    input    wire [1:0]  wd_rfr_limit  ,
    //input    wire      flt_recovery_en , // The fault recovery strategy is enabled
    /////// fail-safe <-> wwdt
    input    wire        wd_off        ,  // valid_wd
    output   reg  [3:0]  wd_err_cnt    ,
    output   reg  [2:0]  wd_rfr_cnt    ,
    input    wire    flag_init_fs      , 
    output   reg     init_fs_done      , // wd_ok
    output   reg     wdw_over_256ms    , //wdw is not correctly refreshed within 256ms :(!) no/wrong wd_resfrsh in INIT_FS
    output   reg     wdw_over_recovery , //wdw is not correctly refreshed within Recovery : no/wrong wd_resfrsh in Recovery
    input    wire    flag_initfs_done  , //wdw counter is valid after INIT_FS
    //
    input    wire    fccu_err          , // any fccu error
    /////// wwdt --> Fault summary
    output   wire    wdw_sta           , // 0-closed 1-open
    //output   wire    incr              , // FLT_ERR_CNT +1   
    output   wire    incr_a            , // a)WD_ERR_LIMIT = wd_err_cnt
    output   wire    incr_b            , // b) no/wrong wd_resfrsh in INIT_FS
    output   reg     decr              , // FLT_ERR_CNT -1
    output   wire    good_wdw          ,
    output   wire    bad_wdw           ,
    output   wire    bad_wd_data       , // bad wd fresh,error in the DATA
    output   wire    bad_wd_timing       // bad wd fresh,wrong window or in timeout
);

reg  flag_recovery     ; 
reg  flag_recovery_r   ;
reg  flag_init_fs_r    ;
wire flag_recovery_pos ;
wire flag_init_fs_pos  ;
assign flag_recovery_pos = ~flag_recovery_r & flag_recovery ;
assign flag_init_fs_pos  = ~flag_init_fs_r & flag_init_fs   ;

always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
        flag_init_fs_r  <= #UDLY 1'b0;
        flag_recovery_r <= #UDLY 1'b0;
    end else begin
        flag_init_fs_r  <= #UDLY flag_init_fs;
        flag_recovery_r <= #UDLY flag_recovery;
    end

wire flag_closed ;
wire flag_open   ;
// time unit 62.5us = 62500 ns / 50 ns = 1250
reg [10:0] cnt_div;

wire   flag_62p5us     ;
wire   flag_62p5us_pre ;
assign flag_62p5us = (cnt_div == MAX_CNT_62P5US-1);
assign flag_62p5us_pre = (cnt_div == MAX_CNT_62P5US-2);
// variable
reg  [14:0] max_cnt_closed ;
reg  [14:0] max_cnt_open   ;
reg  [14:0] cnt_wdw        ;
reg  clr_cnt_wdw           ;

wire   flag_cnt_wdw        ;
assign flag_cnt_wdw = (cnt_wdw==max_cnt_open-1) & flag_62p5us;

//wire   incr_a,incr_b       ;
//wd_err_cnt[3:0] , wd_rfr_cnt[2:0]  // otp ??
//reg  [3:0] wd_err_cnt      ;
//reg  [2:0] wd_rfr_cnt      ;
reg  [3:0] err_limit       ;
reg  [2:0] rfr_limit       ;
assign incr_a = (wd_err_cnt == err_limit);// WD error counter = max value

reg    wdw_over_256ms_r    ;
wire   wdw_over_256ms_pos  ;
assign incr_b = wdw_over_256ms_pos;
assign wdw_over_256ms_pos = ~wdw_over_256ms_r & wdw_over_256ms;

localparam WDW_OPEN  = 1'b1;
localparam WDW_CLOSE = 1'b0;

reg wdw_sta_vld  ; // wdw is working
reg wdw_status   ; // OPEN / CLOSE
reg wdw_status_r ;
assign wdw_sta = wdw_sta_vld ? wdw_status : 1'bz;

wire wdw_fresh      ;
reg  wdw_fresh2     ;
reg  flag_cnt_wdw_r ;
assign wdw_fresh = wdw_fresh2 | flag_cnt_wdw_r;
assign good_wdw = wdw_fresh & wdw_status_r & wdw_right;
assign bad_wdw =  wdw_fresh &(~(wdw_status_r & wdw_right));
assign bad_wd_data = wdw_fresh2 & wdw_status_r & (!wdw_right) ; // OPEN , !wdw_right
assign bad_wd_timing = (wdw_fresh2 & !wdw_status_r)|| flag_cnt_wdw_r;
//assign bad_wd_timing = wdw_fresh & 
always @(posedge clk or negedge rst_n)
     if(!rst_n) 
         wdw_fresh2 <= #UDLY 1'b0;
     else if(wdw_fresh2)
         wdw_fresh2 <= #UDLY 1'b0;
     else /// wdw_sta_vld: wwdt is valid ; wdw_vld: wwdt answer is valid ; flag_cnt_wdw: wwdt timeout
         wdw_fresh2 <= #UDLY (wdw_sta_vld & wdw_vld);
         //wdw_fresh2 <= #UDLY ((wdw_sta_vld & wdw_vld) | flag_cnt_wdw); 

always @(posedge clk or negedge rst_n)
     if(!rst_n) begin
         wdw_status_r   <= #UDLY 1'b0;
         flag_cnt_wdw_r <= #UDLY 1'b0;
     end else begin
         wdw_status_r   <= #UDLY wdw_status   ;
         flag_cnt_wdw_r <= #UDLY flag_cnt_wdw ;
     end

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        init_fs_done <= #UDLY 1'b0;
    else 
        init_fs_done <= #UDLY flag_init_fs & wdw_vld & wdw_right;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        wdw_over_256ms <= #UDLY 1'b0;
    else if(flag_init_fs)
        if(flag_cnt_wdw)                    // No WD refresh in INIT_FS
            wdw_over_256ms <= #UDLY 1'b1;
        else if(wdw_vld & (!wdw_right))     // Wrong WD refresh in INIT_FS
            wdw_over_256ms <= #UDLY 1'b1;
        else 
            wdw_over_256ms <= #UDLY 1'b0;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        wdw_over_256ms_r <= #UDLY 1'b0;     
    else
        wdw_over_256ms_r <= #UDLY wdw_over_256ms;

always @(posedge clk or negedge rst_n)
     if(!rst_n)
         wdw_over_recovery <= #UDLY 1'b0;
     else if(flag_recovery)
        if(flag_cnt_wdw)                       // No WD refresh in RECOVERY
            wdw_over_recovery <= #UDLY 1'b1;
        else if(wdw_vld & (!wdw_right))         // Wrong WD refresh in RECOVERY
            wdw_over_recovery <= #UDLY 1'b1;
        else 
            wdw_over_recovery <= #UDLY 1'b0;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
       wd_err_cnt <= #UDLY 'h0;
    else if(wd_off)
       wd_err_cnt <= #UDLY 'h0;
    else if(wd_err_cnt == err_limit)
       wd_err_cnt <= #UDLY 'h0;
    else if(flag_initfs_done && !flag_recovery) begin
        if(good_wdw)
           if(wd_err_cnt=='h0)
               wd_err_cnt <= #UDLY 'h0;
           else
               wd_err_cnt <= #UDLY wd_err_cnt - 1'h1;
        else if(bad_wdw)
           if((wd_err_cnt + 2'h2) >= err_limit)
               wd_err_cnt <= #UDLY err_limit;
           else
               wd_err_cnt <= #UDLY wd_err_cnt + 2'h2;
    end else
           wd_err_cnt <= #UDLY wd_err_cnt ;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        wd_rfr_cnt <= #UDLY 'h0;
    else if(wd_off)
        wd_rfr_cnt <= #UDLY 'h0;
    else if(flag_initfs_done) begin
        if(bad_wdw)
            wd_rfr_cnt <= #UDLY 'h0;
        else if(good_wdw)
            if(wd_rfr_cnt == rfr_limit)
                wd_rfr_cnt <= #UDLY 'h0; // incr flt_err_cnt
            else
                wd_rfr_cnt <= #UDLY wd_rfr_cnt + 1'b1;
    end

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        decr <= #UDLY 1'b0;
    else if(flag_initfs_done && good_wdw && (wd_rfr_cnt==rfr_limit))
        decr <= #UDLY 1'b1;
    else 
        decr <= #UDLY 1'b0;

reg recovery_unlock;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        flag_recovery <= #UDLY 1'b0;
    //else if(flag_recovery && flag_cnt_wdw)
    else if(recovery_unlock && wdw_fresh)
        flag_recovery <= #UDLY 1'b0;
    else if(fccu_err)
        flag_recovery <= #UDLY 1'b1;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        recovery_unlock <= #UDLY 1'b0;
    else if(recovery_unlock && wdw_fresh)
        recovery_unlock <= #UDLY 1'b0;
    else if(flag_recovery_pos)
        recovery_unlock <= #UDLY 1'b1;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        clr_cnt_wdw <= #UDLY 1'b0;
    else if(clr_cnt_wdw)
        clr_cnt_wdw <= #UDLY 1'b0;
    else if(flag_init_fs_pos || flag_recovery_pos)
        clr_cnt_wdw <= #UDLY 1'b1;
    else if(flag_init_fs & wdw_vld & wdw_right) // the 256ms wwdt is refreshed
        clr_cnt_wdw <= #UDLY 1'b1;

always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
    	wdw_sta_vld <= #UDLY 1'b0;
        wdw_status  <= #UDLY WDW_OPEN;
    end else if(flag_init_fs || flag_recovery) begin  // keep open when in INIT_FS
        //if(wdw_vld & wdw_right) begin // a good wwdt in 256ms
        if(init_fs_done) begin
            wdw_sta_vld <= #UDLY 1'b1;
            wdw_status  <= #UDLY WDW_CLOSE;
        //end else if(flag_cnt_wdw) begin
        //    wdw_sta_vld <= #UDLY 1'b0;           // wdw is not correctly refreshed within 256ms
        //    wdw_status  <= #UDLY WDW_OPEN;
        end else begin
    	    wdw_sta_vld <= #UDLY 1'b1;
    	    wdw_status  <= #UDLY WDW_OPEN;
        end 
    end else if(wdw_sta_vld) begin
        if(wdw_fresh)
            wdw_status <= #UDLY WDW_CLOSE;
        else if((cnt_wdw==max_cnt_open-1) && flag_62p5us) //open -> close
            wdw_status  <= #UDLY WDW_CLOSE;
        else if((cnt_wdw==max_cnt_closed-1) && flag_62p5us) 
            wdw_status  <= #UDLY WDW_OPEN ;
    end else begin
        wdw_sta_vld <= #UDLY 1'b0;
        wdw_status  <= #UDLY WDW_OPEN;
    end

always @(posedge clk or negedge rst_n)
    if(!rst_n)
    	cnt_wdw <= #UDLY 'h0;
    else if(flag_cnt_wdw || clr_cnt_wdw)
    	cnt_wdw <= #UDLY 'h0;
    else if(wdw_fresh)
        cnt_wdw <= #UDLY 'h0;
    else if(flag_62p5us)
    	cnt_wdw <= #UDLY cnt_wdw + 1'b1;

wire  clr_cnt_div;
assign clr_cnt_div = clr_cnt_wdw || wdw_fresh;
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        cnt_div <= #UDLY 'h0;
    else if(flag_62p5us)
    	cnt_div <= #UDLY 'h0;
    else if(clr_cnt_div)
        cnt_div <= #UDLY 'h1;
    else
    	cnt_div <= #UDLY cnt_div + 1'b1;

always @(*) begin
    case(wd_err_limit)
    2'b00: err_limit = 4'h8;
    2'b01: err_limit = 4'h6;
    2'b10: err_limit = 4'h4;
    2'b11: err_limit = 4'h2;
    default: err_limit = 4'h6;
    endcase
end
always @(*) begin
    case(wd_rfr_limit)
    2'b00: rfr_limit = 3'h6;
    2'b01: rfr_limit = 3'h4;
    2'b10: rfr_limit = 3'h2;
    2'b11: rfr_limit = 3'h1;
    default: rfr_limit = 3'h6;
    endcase

end
always @(*) 
	if(flag_init_fs) begin
		max_cnt_open   = 'd4096; // 256ms
		max_cnt_closed = 'd0;
    end else if(flag_recovery) begin
        max_cnt_closed = 'd0;
        case(wdw_recovery)
            4'h0: max_cnt_open = 'd0    ;
            4'h1: max_cnt_open = 'd16   ;
            4'h2: max_cnt_open = 'd32   ;
            4'h3: max_cnt_open = 'd48   ;
            4'h4: max_cnt_open = 'd64   ;
            4'h5: max_cnt_open = 'd96   ;
            4'h6: max_cnt_open = 'd128  ;
            4'h7: max_cnt_open = 'd192  ;
            4'h8: max_cnt_open = 'd256  ;
            4'h9: max_cnt_open = 'd384  ;
            4'ha: max_cnt_open = 'd512  ;
            4'hb: max_cnt_open = 'd1024 ;
            4'hc: max_cnt_open = 'd2048 ;
            4'hd: max_cnt_open = 'd4096 ;
            4'he: max_cnt_open = 'd8192 ;
            4'hf: max_cnt_open = 'd16384;
            default: max_cnt_open = 'd1024;
        endcase
	end else begin
		case(wdw_period)
			4'h0: begin  // close
				max_cnt_open   = 'd0;
				max_cnt_closed = 'd0;
			end  
			4'h1: begin
				max_cnt_open = 'd16; 
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd5 ; // 31.25%
					3'b001:  max_cnt_closed = 'd6 ; // 37.5
					3'b010:  max_cnt_closed = 'd8 ; // 50
					3'b011:  max_cnt_closed = 'd10; // 62.5
					3'b100:  max_cnt_closed = 'd11; // 68.75
					default: max_cnt_closed = 'd8 ; // 50        
				endcase
			end 
			4'h2: begin
				max_cnt_open = 'd32;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd10; // 31.25%
					3'b001:  max_cnt_closed = 'd12; // 37.5
					3'b010:  max_cnt_closed = 'd16; // 50
					3'b011:  max_cnt_closed = 'd20; // 62.5
					3'b100:  max_cnt_closed = 'd22; // 68.75
					default: max_cnt_closed = 'd16; // 50        
				endcase
			end 
            4'h3: begin
                max_cnt_open = 'd48;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd15; // 31.25%
					3'b001:  max_cnt_closed = 'd18; // 37.5
					3'b010:  max_cnt_closed = 'd24; // 50
					3'b011:  max_cnt_closed = 'd30; // 62.5
					3'b100:  max_cnt_closed = 'd33; // 68.75
					default: max_cnt_closed = 'd24; // 50        
				endcase
            end 
			4'h4: begin
			    max_cnt_open = 'd64;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd20; // 31.25%
					3'b001:  max_cnt_closed = 'd24; // 37.5
					3'b010:  max_cnt_closed = 'd32; // 50
					3'b011:  max_cnt_closed = 'd40; // 62.5
					3'b100:  max_cnt_closed = 'd44; // 68.75
					default: max_cnt_closed = 'd32; // 50        
				endcase
			end 
			4'h5: begin
			    max_cnt_open = 'd96;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd30; // 31.25%
					3'b001:  max_cnt_closed = 'd36; // 37.5
					3'b010:  max_cnt_closed = 'd48; // 50
					3'b011:  max_cnt_closed = 'd64; // 62.5
					3'b100:  max_cnt_closed = 'd66; // 68.75
					default: max_cnt_closed = 'd48; // 50        
				endcase
			end 
			4'h6: begin
				max_cnt_open = 'd128;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd40; // 31.25%
					3'b001:  max_cnt_closed = 'd48; // 37.5
					3'b010:  max_cnt_closed = 'd64; // 50
					3'b011:  max_cnt_closed = 'd80; // 62.5
					3'b100:  max_cnt_closed = 'd88; // 68.75
					default: max_cnt_closed = 'd64; // 50        
				endcase
			end 
			4'h7: begin
				max_cnt_open = 'd192;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd60 ; // 31.25%
					3'b001:  max_cnt_closed = 'd72 ; // 37.5
					3'b010:  max_cnt_closed = 'd96 ; // 50
					3'b011:  max_cnt_closed = 'd120; // 62.5
					3'b100:  max_cnt_closed = 'd132; // 68.75
					default: max_cnt_closed = 'd96 ; // 50        
				endcase
			end 
			4'h8: begin
				max_cnt_open = 'd256;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd80 ; // 31.25%
					3'b001:  max_cnt_closed = 'd96 ; // 37.5
					3'b010:  max_cnt_closed = 'd128; // 50
					3'b011:  max_cnt_closed = 'd160; // 62.5
					3'b100:  max_cnt_closed = 'd176; // 68.75
					default: max_cnt_closed = 'd128; // 50        
				endcase
			end 
			4'h9: begin
				max_cnt_open = 'd384;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd120; // 31.25%
					3'b001:  max_cnt_closed = 'd144; // 37.5
					3'b010:  max_cnt_closed = 'd192; // 50
					3'b011:  max_cnt_closed = 'd240; // 62.5
					3'b100:  max_cnt_closed = 'd264; // 68.75
					default: max_cnt_closed = 'd192; // 50        
				endcase
			end 
			4'ha: begin
				max_cnt_open = 'd512;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd160; // 31.25%
					3'b001:  max_cnt_closed = 'd192; // 37.5
					3'b010:  max_cnt_closed = 'd256; // 50
					3'b011:  max_cnt_closed = 'd320; // 62.5
					3'b100:  max_cnt_closed = 'd352; // 68.75
					default: max_cnt_closed = 'd256; // 50        
				endcase
			end 
			4'hb: begin
				max_cnt_open = 'd1024;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd320; // 31.25%
					3'b001:  max_cnt_closed = 'd384; // 37.5
					3'b010:  max_cnt_closed = 'd512; // 50
					3'b011:  max_cnt_closed = 'd640; // 62.5
					3'b100:  max_cnt_closed = 'd704; // 68.75
					default: max_cnt_closed = 'd512; // 50        
				endcase
			end 
			4'hc: begin
				max_cnt_open = 'd2048;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd640 ; // 31.25%
					3'b001:  max_cnt_closed = 'd768 ; // 37.5
					3'b010:  max_cnt_closed = 'd1024; // 50
					3'b011:  max_cnt_closed = 'd1280; // 62.5
					3'b100:  max_cnt_closed = 'd1408; // 68.75
					default: max_cnt_closed = 'd1024; // 50        
				endcase
			end 
			4'hd: begin
				max_cnt_open = 'd4096;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd1280; // 31.25%
					3'b001:  max_cnt_closed = 'd1536; // 37.5
					3'b010:  max_cnt_closed = 'd2048; // 50
					3'b011:  max_cnt_closed = 'd2560; // 62.5
					3'b100:  max_cnt_closed = 'd2816; // 68.75
					default: max_cnt_closed = 'd2048; // 50        
				endcase
			end 
			4'he: begin
				max_cnt_open = 'd8192;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd2560; // 31.25%
					3'b001:  max_cnt_closed = 'd3072; // 37.5
					3'b010:  max_cnt_closed = 'd4096; // 50
					3'b011:  max_cnt_closed = 'd5120; // 62.5
					3'b100:  max_cnt_closed = 'd5632; // 68.75
					default: max_cnt_closed = 'd4096; // 50        
				endcase
			end 
			4'hf: begin
				max_cnt_open = 'd16384;
				case(wdw_dc)
					3'b000:  max_cnt_closed = 'd5120 ; // 31.25%
					3'b001:  max_cnt_closed = 'd6144 ; // 37.5
					3'b010:  max_cnt_closed = 'd8192 ; // 50
					3'b011:  max_cnt_closed = 'd10240; // 62.5
					3'b100:  max_cnt_closed = 'd11264; // 68.75
					default: max_cnt_closed = 'd8192 ; // 50        
				endcase
			end 
			default: begin
				max_cnt_open   = 'd0;
				max_cnt_closed = 'd0;
			end 
		endcase 
	end 


endmodule
