module fsm_main #(
    parameter UDLY = 1,
    parameter MAX_CNT_250US = 5000
)(
    input    wire    clk              ,  // Clock 20MHz 50ns
    input    wire    clk_en           ,  // Clock Enable
    input    wire    rst_n            ,  // rst_n = (PORB_MAIN==1) && (Vbos>Vbos_por)  inspect!
    /////// fail-safe <-> main
    input    wire    dfs              ,
    input    wire    fs_ready         ,
    input    wire    valid_wd         ,
    output   wire    fs_enable        ,
    /////// main <-> analog
    input    wire    xvbosuv          , // Vbos  uv
    input    wire    vsupuv7          , // Vsup  uv7
    input    wire    xvsupuv          , // Vsup  uv
    input    wire    wake1_dig        ,
    input    wire    wake2_dig        ,
    input    wire    vpreuv           , // Vpre  uv
    input    wire    vpre_fb_ov       , // Vpre  ov
    input    wire    boostuv          , // boost uv
    //
    input    wire    boostot          , // boost tsd
    input    wire    buck1ot          , // buck1 tsd
    input    wire    buck2ot          , // buck2 tsd
    input    wire    buck3ot          , // buck3 tsd
    input    wire    ldo1ot           , // ldo1  tsd
    input    wire    ldo2ot           , // ldo2  tsd
    //
    input    wire    vpre_sta         , // add
    input    wire    boost_sta        ,
    input    wire    buck1_sta        ,
    input    wire    buck2_sta        ,
    input    wire    buck3_sta        ,
    input    wire    ldo1_sta         ,
    input    wire    ldo2_sta         ,
    // from pins 
    input    wire    dbg_vld          ,
    input    wire    psync            ,
    //
    output   wire    enpre            , // Vpre enable
    output   wire    enboost          , 
    output   wire    enbuck1          ,    
    output   wire    enbuck2          ,
    output   wire    enbuck3          ,
    output   wire    enldo1           ,
    output   wire    enldo2           ,
    /////// main <-> otp
    input    wire    otp_psync_cfg    ,  // sync with the same chip(0) or other chip(1)
    input    wire    otp_vpre_off_dly ,  // Delay to turn off VPRE: 250us(0) or 32ms(1)
    input    wire    otp_autorty_en   ,
    input    wire    otp_autorty_cfg  ,  // infinite (1) or 15 times(0)
    input    wire [5:0]  otp_conf_tsd ,  // TSD_cfg {boost,buck1~3,ldo1~2}, DFS(1) or only close(0)   
	/////// main <-> regs
    output   wire [5:0]  vregx_tsd    ,  //?
    input    wire        Tslot        ,  //  250us(0) or 1ms(1)
    input    wire [2:0]  vb3s         ,
    input    wire [2:0]  vb2s         ,  //  slot 0~6 disbale(7) buck2    
    input    wire [2:0]  vb1s         ,
    input    wire [2:0]  ldo2s        ,
    input    wire [2:0]  ldo1s        ,
    input    wire        goto_stby    

);

localparam PWRDOWN   =  4'b0001;
localparam STDBY     =  4'b0010;
localparam STDBY_FS  =  4'b0011;
localparam DEEP_FS   =  4'b0100;
localparam WAIT_FS   =  4'b0101;
localparam VPRE_ON   =  4'b0110;
localparam BOOST_ON  =  4'b0111;
localparam VREGX_ON  =  4'b1000;
localparam NORMAL_M  =  4'b1001;
localparam VREGX_OFF =  4'b1010;
localparam BOOST_OFF =  4'b1011;
localparam VPRE_OFF  =  4'b1100;

reg [3:0] nx_st,st;

wire [3:0] tsd_fs     ;
wire       any_tsd_fs ;
assign vregx_tsd = {boostot,buck1ot,buck2ot,buck3ot,ldo1ot,ldo2ot};
assign tsd_fs = vregx_tsd & otp_conf_tsd;
assign any_tsd_fs = |tsd_fs;

///////// global

//////////////////
reg         ena_250us  = 1;
reg         clr_250us ;
reg  [12:0] cnt_250us ;
wire        flag_250us = (cnt_250us==MAX_CNT_250US-1);
wire        flag_250us_pre = (cnt_250us==MAX_CNT_250US-2)|flag_250us;
wire        flag_250us_pre2 = (cnt_250us==MAX_CNT_250US-3)|flag_250us_pre;


reg        clr_ms;
reg        ena_ms;
reg  [7:0] cnt_ms; // 4/8/128
wire       flag_2ms;
wire       flag_2ms_pre;
// wait_after_vpre_closed 
// slots time
// flag_1ms (wake1=0:Deep_fs -> stby_fs) or (VREGx_ON/OFF: Tslot=1)
assign flag_1ms =  &({cnt_ms[1:0],flag_250us}); //3
assign flag_1ms_pre = &({cnt_ms[1:0],flag_250us_pre}); //3
assign flag_1ms_pre2 = &({cnt_ms[1:0],flag_250us_pre2}); //3

// flag_2ms (vpreuv:Vpre_on -> Deep_fs)
assign flag_2ms =  &({cnt_ms[2:0],flag_250us}); //7
assign flag_2ms_pre = &({cnt_ms[2:0],flag_250us_pre}); //7
assign flag_2ms_pre2 = &({cnt_ms[2:0],flag_250us_pre2}); //7

// wait_to_close_vpre 250us or 32ms
assign flag_32ms = &({cnt_ms[6:0],flag_250us});//127
assign flag_32ms_pre = &({cnt_ms[6:0],flag_250us_pre});//127
assign flag_32ms_pre2 = &({cnt_ms[6:0],flag_250us_pre2});//127


wire vpreoff_wait_done = otp_vpre_off_dly ? flag_32ms:flag_250us;

reg        clr_s;
reg        ena_s;
reg [26:0] cnt_s; //

//assign flag_1s = (cnt_s>MAX_CNT_250US*4000-1);
//assign flag_4s = (cnt_s>MAX_CNT_250US*16000-1);
assign flag_1s = (cnt_s>4000-1);
assign flag_4s = (cnt_s>16000-1);

reg [3:0] autorty_count; // 15
assign autorty_4s = flag_4s;
assign autorty_done = (autorty_count =='d15) & (!otp_autorty_cfg);

// autorty 4s
// timeout_1s(from Vpre_on -> normal_m)

wire   flag_pwrup_seq;
assign flag_pwrup_seq = (st==VPRE_ON)|(st==BOOST_ON)|(st==VREGX_ON);

reg signed [6:0] slot_en; //bits7 : slot0~slot6
wire slot_done = Tslot ? flag_1ms:flag_250us;
//wire all_slot_done = slot_done && ((slot_en==7'h7f)||(slot_en==7'h00));
wire pwr_up_done = &{vpre_sta,boost_sta,buck1_sta,buck2_sta,buck3_sta,ldo1_sta,ldo2_sta};

wire all_slot_done = ((slot_en==7'h7f)||(slot_en==7'h00));
always @(posedge clk or negedge rst_n)
    if(!rst_n)
     	slot_en <= #UDLY 7'h00;
    else if((st==BOOST_ON) && (!boostuv&boost_sta))
    	slot_en <= #UDLY 7'h40;
    else if((goto_stby || !fs_ready || (!valid_wd&!wake1_dig&!wake2_dig)) && (st==NORMAL_M))
    	slot_en <= #UDLY (slot_en & 7'h3f);
    else if(slot_done)
    	slot_en <= #UDLY (slot_en>>>1);


    
assign enbuck1 = slot_en[6-vb1s];
assign enbuck2 = slot_en[6-vb2s];
assign enbuck3 = slot_en[6-vb3s];
assign enldo1  = slot_en[6-ldo1s];
assign enldo2  = slot_en[6-ldo2s];

assign fs_enable = flag_pwrup_seq;

always @(posedge clk or negedge rst_n)
    if(!rst_n)
        st <= #UDLY PWRDOWN;
    else if(dfs)
    	st <= #UDLY DEEP_FS;
    else 
    	st <= #UDLY nx_st;

always @(*) begin
	if(vpre_fb_ov | any_tsd_fs)  
        nx_st = DEEP_FS;
    else if(flag_pwrup_seq && flag_1s)
    	nx_st = STDBY;
	else
    case(st)
    	PWRDOWN    : begin
    		if(wake1_dig | wake2_dig)
    			nx_st = STDBY  ;
    		else
    			nx_st = PWRDOWN;
    	end 
        STDBY      : begin
        	if(wake1_dig | wake2_dig)
        		nx_st = WAIT_FS;
        	else
        		nx_st = PWRDOWN;
        end 
        STDBY_FS   : begin
        	if(!wake1_dig & !wake2_dig)
        		nx_st = PWRDOWN;
        	else if(wake1_dig & !dbg_vld)
        		nx_st = WAIT_FS;
        	else
        		nx_st = STDBY_FS;
        end 
        DEEP_FS    : begin
        	if((!wake1_dig&flag_1ms) || (autorty_4s))
        		nx_st = STDBY_FS;
        	else
        		nx_st = DEEP_FS;
        end 
        WAIT_FS    : begin
        	if(((!xvsupuv)&(!xvbosuv)&fs_ready) && (psync|otp_psync_cfg))
        		nx_st = VPRE_ON;
        	else
        		nx_st = WAIT_FS;
        end 
        VPRE_ON    : begin
        	if(vpreuv && flag_2ms) // Vpre uv is more than 2ms
        		nx_st = DEEP_FS;
        	else if((!vpreuv&vpre_sta) && (psync | (!otp_psync_cfg)))
        		nx_st = BOOST_ON ;
        	else
        		nx_st = VPRE_ON  ; 
        end 
        BOOST_ON   : begin
        	if(!boostuv&boost_sta)
        		nx_st = VREGX_ON;
        	else
        		nx_st = BOOST_ON;
        end 
        VREGX_ON   : begin
        	if(all_slot_done & pwr_up_done)
        		nx_st = NORMAL_M;
        	else
        		nx_st = VREGX_ON;
        end 
        NORMAL_M   : begin
        	if(xvbosuv | vpreuv)
        		nx_st = STDBY;
        	else if(goto_stby || !fs_ready || (!valid_wd&!wake1_dig&!wake2_dig))
        		nx_st = VREGX_OFF;
        	else 
        		nx_st = NORMAL_M;
        end 
        VREGX_OFF  : begin
        	if(all_slot_done)
        		nx_st = BOOST_OFF;
        	else
        		nx_st = VREGX_OFF;
        end 
        BOOST_OFF  : begin  
            if(vpreoff_wait_done && !boost_sta) 
            	nx_st = VPRE_OFF;
            else
            	nx_st = BOOST_OFF;
        end 
        VPRE_OFF   : begin
        	if(flag_250us)
        		nx_st = STDBY;
        	else
        		nx_st = VPRE_OFF;
        end
        default : nx_st = PWRDOWN;
    endcase 
end 

reg case_lock;
reg case_lock2;

always @(posedge clk or negedge rst_n) 
    if(!rst_n) 
        case_lock <= #UDLY 1'b0;
    //else if(flag_pwrup_seq & flag_1s)
    //    case_lock <= #UDLY 1'b1;
    else 
        case(st)
        DEEP_FS : begin
            if(flag_1ms_pre2==1'b1)
                case_lock <= #UDLY 1'b0;
            else if(!wake1_dig)
                case_lock <= #UDLY 1'b1;
            //else if(otp_autorty_en)
            //    case_lock <= #UDLY 1'b1;
            else 
                case_lock <= #UDLY 1'b0;
        end
        VPRE_ON : begin
            if(flag_2ms_pre2==1'b1)
                case_lock <= #UDLY 1'b0;
            else if(vpreuv)
                case_lock <= #UDLY 1'b1;
            else 
                case_lock <= #UDLY 1'b0; // the vpreuv pulls down before flag_2ms, recount from 0!
        end
        BOOST_ON : begin
            if(boost_sta)
                case_lock <= #UDLY 1'b1;
        end
        VREGX_ON : begin
            case_lock <= #UDLY 1'b0;
        end
        NORMAL_M : begin
            if(goto_stby || !fs_ready || (!valid_wd&!wake1_dig&!wake2_dig)) 
                case_lock <= #UDLY 1'b1;
            else 
                case_lock <= #UDLY 1'b0;
        end
        VREGX_OFF : begin
            case_lock <= #UDLY 1'b0;
        end
        BOOST_OFF : begin
            if(flag_32ms_pre2 & otp_vpre_off_dly)
                case_lock <= #UDLY 1'b0;
            else if(flag_250us_pre2 & !otp_vpre_off_dly)
                case_lock <= #UDLY 1'b0;
            else if(!boost_sta)
                case_lock <= #UDLY 1'b1;
        end
        VPRE_OFF : begin
            if(flag_250us_pre2)
                case_lock <= #UDLY 1'b0;
            else if(!vpre_sta)
                case_lock <= #UDLY 1'b1;        
        end
//        WAIT_FS: begin
//            if(((!xvsupuv)&(!xvbosuv)&fs_ready) && (psync|otp_psync_cfg))
//                case_lock <= #UDLY 1'b1;
//        end
        default : case_lock <= #UDLY 1'b0;
        endcase

always @(posedge clk or negedge rst_n) 
    if(!rst_n) begin
    	ena_ms <= #UDLY 1'b0;
    	clr_250us <= #UDLY 1'b0;
        clr_ms    <= #UDLY 1'b0;
    end else if(case_lock) begin // case lock to avoid (ena & clr) change
        ena_ms <= #UDLY ena_ms;
        clr_250us <= #UDLY clr_250us ? 1'b0 : clr_250us;
        clr_ms    <= #UDLY clr_ms ? 1'b0 : clr_ms; 
    end else begin
        case(st)
        	DEEP_FS:
                if(flag_1ms_pre==1'b1) begin
                    ena_ms <= #UDLY 1'b0;
                end else if(!wake1_dig) begin
                    ena_ms <= #UDLY 1'b1;
        	    	clr_250us <= #UDLY 1'b1;
                    clr_ms <= #UDLY 1'b1;
        	    end else begin	
        	    	ena_ms <= #UDLY 1'b0;
        	    end
        	VPRE_ON  :
                if(flag_2ms_pre==1'b1) begin	
        	    	ena_ms <= #UDLY 1'b0;
        	    end else if(vpreuv) begin
                    ena_ms <= #UDLY 1'b1;
                    clr_250us <= #UDLY 1'b1;
                    clr_ms    <= #UDLY 1'b1;
        	    end else begin	
        	    	ena_ms <= #UDLY 1'b0;
        	    end 
        	BOOST_ON:
        	    if(boost_sta) begin
                    ena_ms  <= #UDLY (Tslot ? 1'b1:1'b0);
        	    	clr_250us <= #UDLY 1'b1;
                    clr_ms  <= #UDLY (Tslot ? 1'b1:1'b0);
        	    end else 
                    ena_ms <= #UDLY 1'b0;
        	VREGX_ON:
        	    if(all_slot_done) begin 
        	    	ena_ms <= #UDLY 1'b0;
        	    end
        	NORMAL_M:
                if(goto_stby || !fs_ready || (!valid_wd&!wake1_dig&!wake2_dig)) begin
                	clr_250us <= #UDLY 1'b1;
        	    	ena_ms  <= #UDLY (Tslot ? 1'b1:1'b0);
                end 
        	VREGX_OFF:
                if(all_slot_done) begin
        	    	ena_ms <= #UDLY 1'b0;
        	    end
        	BOOST_OFF:
        	    if(boost_sta==1'b0) begin
        	    	clr_250us <= #UDLY 1'b1;
        	    	ena_ms  <= #UDLY (otp_vpre_off_dly ? 1'b1:1'b0);
        	    end else if(otp_vpre_off_dly & flag_32ms_pre) begin	
        	    	ena_ms <= #UDLY 1'b0;
        	    end else if(!otp_vpre_off_dly & flag_250us)
        	        ;//clr_250us <= #UDLY 1'b1;
        	    	//ena_250us <= #UDLY 1'b0; 
        	VPRE_OFF:
        	    if(vpre_sta==1'b0) begin
        	    	//ena_250us <= #UDLY 1'b1;
        	    	clr_250us <= #UDLY 1'b1;
        	    end     
        	default: begin
        		//ena_250us <= #UDLY 1'b0;
        		clr_250us <= #UDLY 1'b0;
        		ena_ms <= #UDLY 1'b0;
        	end 
        endcase
    end 


always @(posedge clk or negedge rst_n) 
    if(!rst_n) 
        case_lock2 <= #UDLY 1'b0;
    else if(flag_pwrup_seq & flag_1s)
        case_lock2 <= #UDLY 1'b1;
    else 
        case(st)
            DEEP_FS : begin
            if(otp_autorty_en)
                case_lock2 <= #UDLY 1'b1;
            else 
                case_lock2 <= #UDLY 1'b0;
            end
            WAIT_FS: begin
            if(((!xvsupuv)&(!xvbosuv)&fs_ready) && (psync|otp_psync_cfg))
                case_lock2 <= #UDLY 1'b1;
            end
            default:
                case_lock2 <= #UDLY 1'b0; 
        endcase

always @(posedge clk or negedge rst_n)
    if(!rst_n) begin
    	ena_s <= #UDLY 1'b0;
    	clr_s <= #UDLY 1'b0;
    end else if(case_lock2) begin
    	ena_s <= #UDLY ena_s;
        clr_s <= #UDLY 1'b0;
    end else if(flag_pwrup_seq & flag_1s) begin
        clr_s <= #UDLY 1'b1;
        ena_s <= #UDLY 1'b0;      
    end else begin
    	case(st)
            WAIT_FS: begin
            	if(((!xvsupuv)&(!xvbosuv)&fs_ready) && (psync|otp_psync_cfg)) begin
            		ena_s <= #UDLY 1'b1;
            		clr_s <= #UDLY 1'b1;
            	end
            end
            VPRE_ON:
                ena_s <= #UDLY 1'b1;
            BOOST_ON:
                ena_s <= #UDLY 1'b1;
            VREGX_ON:
                ena_s <= #UDLY 1'b1;
            NORMAL_M :begin
            	ena_s <= #UDLY 1'b0;
            end
            STDBY : begin
                ena_s <= #UDLY 1'b0;
            end 
            DEEP_FS:begin
            	if(otp_autorty_en)begin // autorty
            		ena_s <= #UDLY 1'b1;
            		clr_s <= #UDLY 1'b1;
                end
            end 
            default: begin
            	ena_s <= #UDLY 1'b0;
            end
    	endcase
    end 


//div -> 250us  always on
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        cnt_250us <= #UDLY 'h0;
    else if(clr_250us)
        cnt_250us <= #UDLY 'h1;
    else if(flag_250us)
    	cnt_250us <= #UDLY 'h0;
    else if(ena_250us)
    	cnt_250us <= #UDLY cnt_250us + 1'b1;
// 
always @(posedge clk or negedge rst_n)
    if(!rst_n)
        cnt_ms <= #UDLY 'h0;
    else if(clr_ms)
    	cnt_ms <= #UDLY 'h0;
    else if(ena_ms & flag_250us)
    	cnt_ms <= #UDLY cnt_ms + 1'b1;

always @(posedge clk or negedge rst_n) begin
    if(!rst_n)
        cnt_s <= #UDLY 'h0;
    else if(clr_s)
        cnt_s <= #UDLY 'h0;
    else if(ena_s & flag_250us)
        cnt_s <= #UDLY cnt_s + 1'b1;
end

// autorty
always @(posedge clk or negedge rst_n) 
    if(!rst_n)
        autorty_count <= #UDLY 'h0; // only 
    else if(autorty_done)
        autorty_count <= #UDLY autorty_count; // hold
    else if(autorty_4s)
        autorty_count <= #UDLY 'h0; 



endmodule
