module dig_top #(
    parameter UDLY = 1
)(
    input  wire     sclk,//spi clock 
    input  wire     cs_n,//spi chip select 
    input  wire     mosi,//spi master out slave input data 
    output wire     miso,//spi master in slave output data 
    input  wire     i_sck,//i2c clock 
    input  wire     i_sda,//i2c master output data 
    output wire     o_sda,//i2c slave output data 
    input  wire     scan_mode,//entry scan mode  
    output wire     scan_mode_out,//scan mode entry use soft  
    input  wire     scan_en,//scan chain enable 
    input  wire     scan_clk,//scan chain clock 
    input  wire     scan_rst_n,//scan chain reset 
    input  wire     compress,//scan chain compress mode 
    output wire     compress_out,//scan compress set use soft  
    input  wire     scan_di0,//scan chain0 data in 
    input  wire     scan_di1,//scan chian1 data in 
    output wire     scan_do0,//scan chain0 data out 
    output wire     scan_do1,//scan chian1 data out 
    input  wire     main_clk20m,//20M clock for main digital 
    input  wire     fs_clk20m,//20M clock for fs digital 
    input  wire     fs_ref_clk20m,//20M clock for fs digital 
    input  wire     vdigov_fs,//None 
    input  wire     xvdiguv_fs,//None 
    input  wire     xpor_fs,//None 
    input  wire     xpor,//initial por for digital about 0.9V 
    input  wire     xdiguv,//por signal 1.2v,M digital be reset by xpor & xdiguv 
    input  wire     xvbosuv,//vbos uv signal 
    input  wire     vsupuv7,//Vsup<7 event staus 
    input  wire     xsupuv,//Vsup uv 
    input  wire     pll_lck_rt,//pll locked flag bit 
    input  wire     psyncind,//psyncin signal of the pin 
    input  wire     wake1_dig,//wake1 pin signal 
    input  wire     wake2_dig,//wake2 pin signal 
    input  wire     fin_d,//fin pin signal 
    input  wire     boostuv,//vboost undervoltage high event 
    input  wire     vpreoc,//vpre overcurrent event status 
    input  wire     buck1oc,//buck1 overcurrent event status 
    input  wire     buck2oc,//buck2 overcurrent event status 
    input  wire     buck3oc,//buck3 overcurrent event status 
    input  wire     ldo1oc,//ldo1 overcurrent event status 
    input  wire     ldo2oc,//ldo2 overcurrent event status 
    input  wire     boostov,//vboost overvoltage protection event status 
    input  wire     boostot,//vboost overtemperature shutdown event status 
    input  wire     buck1ot,//buck1 overtemperature shutdown event status 
    input  wire     buck2ot,//buck2 overtemperature shutdown event status 
    input  wire     buck3ot,//buck3 overtemperature shutdown event status 
    input  wire     ldo1ot,//ldo1 overtemperature shutdown event status 
    input  wire     ldo2ot,//ldo2 overtemperature shutdown event status 
    input  wire     vpreuv,//vpre undervoltage event status 
    input  wire     vpre_fb_ov,//VPRE overvoltage protection 
    input  wire     ssready,//vpre soft start complete flag 
    input  wire     boost_sta,//boost state <0 , Regulator OFF> <1 ,Regulator ON> 
    input  wire     buck1_sta,//buck1 state <0 , Regulator OFF> <2 ,Regulator ON> 
    input  wire     buck2_sta,//buck2 state <0 , Regulator OFF> <2 ,Regulator ON> 
    input  wire     buck3_sta,//buck3 state <0 , Regulator OFF> <2 ,Regulator ON> 
    input  wire     ldo1_sta,//ldo0 state <0 , Regulator OFF> <2 ,Regulator ON> 
    input  wire     ldo2_sta,//ldo1 state <0 , Regulator OFF> <2 ,Regulator ON> 
    input  wire     dbg_vld,//dbg pin is in range 4.5-5.5V 
    input  wire     errmona,//external IC error detected 
    input  wire     fccu1a,//fccu1 pin  
    input  wire     fccu2a,//fccu2 pin  
    input  wire     fs0bfb,//fs0b  feed back 
    input  wire     pgoodfb,//pgood feddback 
    input  wire     rstbfb,//rstb feedback 
    input  wire  [3:0]ov_mona,//undervoltage vcore monitorning on 
    input  wire  [3:0]uv_mona,//undervoltage vcore monitorning on 
    input  wire     ov_cmona,//overvoltage monitorning on VMON{4,3,2,1} 
    input  wire     uv_cmona,//undervoltage monitorning on VMON{4,3,2,1} 
    input  wire     ov_vddioa,//overvoltage monitorning on VDDIO 
    input  wire     uv_vddioa,//undervoltage monitorning on VDDIO 
    output wire     intb,//None 
    output wire     rstb,//None 
    output wire     pgood,//None 
    output wire     fs0b,//None 
    output wire     enpre,//pre regulator enable 
    output wire     enboost,//boost regulator enable 
    output wire     enbuck1,//buck1 regulator enable 
    output wire     enbuck2,//buck2 regulator enable 
    output wire     enbuck3,//buck3 regulator enable 
    output wire     enldo1,//ldo1 regulator enable 
    output wire     enldo2,//ldo2 regulator enable 
    output wire     psyncoutd,//None 
    output wire  [9:0]vbuck1,//vbuck1 output voltage 
    output wire  [9:0]vbuck2,//vbuck2 output voltage 
    output wire  [9:0]vbuck3,//vbuck3 output voltage 
    output wire  [8:0]refcode,//None 
    output wire     ext_fin_dis,//disable request of EXT FIN selection at PLL input 
    output wire     vpre_pd_dis,//force disable of vpre pull down 
    output wire  [1:0]vbstsr,//vboost low-side slew rate control 
    output wire  [1:0]vpresrls,//vpre low-side slew rate control 
    output wire  [1:0]vpresrhs,//vpre high-side slew rate control 
    output wire     ratio,//slection of divider ratio for Vsup, Wake1 and Wake2 inputs 
    output wire  [4:0]amux,//AMUX output output selection 
    output wire     mod_conf,//modulation configuration of main oscillator 
    output wire  [3:0]fout_mux_sel,//FOUT PIN mux selection 
    output wire  [2:0]fout_phase,//FOUT PIN phase shifting configuration 
    output wire     fout_clk_sel,//FOUT_clk frequency selection(CLK1 or CLK2) 
    output wire     ext_fin_sel,//enable request of EXT FIN selection at PLL input  
    output wire     fin_div,//FIN input signal divider selection(divider by 1 or 6) 
    output wire     mod_en,//modulation activation of main oscillator 
    output wire  [3:0]clk_tune,//mannnul frequency tunning configuration 
    output wire  [4:0]reg_svs_offset,//a static voltage scaling function allow the mcu reduce th output voltage 
    output wire  [5:0]vprev,//vpre output voltage(3.3/3.8/4.1/5.0V) 
    output wire  [5:0]vpresc,//vpre slope compensation 
    output wire  [1:0]vpreilim,//vpre current limitation threshold 
    output wire     vpre_mode,//vpre mode (PWM APS) 
    output wire  [3:0]vbstv,//vboost output voltage 
    output wire  [1:0]vbsttontime,//vboost minimum ON time 
    output wire  [4:0]vbstsc,//vboost slope compensation 
    output wire  [1:0]vbstilim,//先送11，后续添加 
    output wire     ldo2ilim,//vldo2 current limitation 
    output wire  [2:0]ldo2v,//vldo2 output voltage 
    output wire     ldo1ilim,//vldo1 current limitation 
    output wire  [2:0]ldo1v,//vldo1 output voltage 
    output wire  [1:0]dvs_buck12,//buck1 and buck2 soft start/stop configurability 
    output wire  [1:0]dvs_buck3,//buck3 soft start/stop configurability 
    output wire     psync_en,//synchronization with two devices 
    output wire     vsup_cfg,//vsup undervoltage threshold configuration 
    output wire  [2:0]otp_vb1gmcomp,//buck1 compensation network 
    output wire  [1:0]otp_vb1indopt,//buck1 inductor selection 
    output wire  [1:0]otp_vb1swilim,//buck1 current limitation 
    output wire  [2:0]otp_vb2gmcomp,//buck2 compensation network 
    output wire  [1:0]otp_vb2indopt,//buck2 inductor selection 
    output wire  [1:0]otp_vb2swilim,//buck2 current limitation 
    output wire  [2:0]otp_vb3gmcomp,//buck2 compensation network 
    output wire  [1:0]otp_vb3indopt,//buck2 inductor selection 
    output wire  [1:0]otp_vb3swilim,//buck2 current limitation 
    output wire     otp_vb12multiph,//vbuck1 and vbuck2 multiphase operation 
    output wire     otp_pll_sel,//pll enable 
    output wire  [2:0]otp_vbst_ph,//vboost phase(delay) selection 
    output wire  [2:0]otp_vbuck1_ph,//vbuck1 phase(delay) selection 
    output wire  [2:0]otp_vbuck2_ph,//vbuck2 phase(delay) selection 
    output wire  [2:0]otp_vbuck3_ph,//vbuck3 phase(delay) selection 
    output wire     otp_vpre_clk_sel,//vpre clock selection 
    output wire  [2:0]otp_vpre_ph,//vpre phase(delay) selection 
    output wire  [15:0]testmode0,//test mode for analog trimming 
    output wire  [15:0]testmode1,//test mode for analog trimming 
    output wire  [15:0]testmode2,//test mode for analog trimming 
    output wire  [15:0]testmode3,//test mode for analog trimming 
    output wire  [15:0]testmode4,//test mode for analog trimming 
    output wire  [15:0]testmode5,//test mode for analog trimming 
    output wire  [15:0]testmode6,//test mode for analog trimming 
    output wire  [15:0]testmode7,//test mode for analog trimming 
    output wire  [3:0]otp_vcoreovth,//vcoremon overrvoltage threshold configuration 
    output wire  [3:0]otp_vcoreuvth,//vcoremon undervoltage threshold configuration 
    output wire     otp_vddio_v,//vcore(vbuck1) monitoring voltage 
    output wire  [3:0]otp_vddioovth,//vddio overvoltage threshold configuration  
    output wire  [3:0]otp_vddiouvth,//vddio undervoltage threshold configuration  
    output wire  [3:0]otp_vmon1ovth,//vmon1 overvoltage threshold configuration  
    output wire  [3:0]otp_vmon1uvth,//vmon1 undervoltage threshold configuration 
    output wire  [3:0]otp_vmon2ovth,//vmon2 overvoltage threshold configuration  
    output wire  [3:0]otp_vmon2uvth,//vmon2 undervoltage threshold configuration 
    output wire  [3:0]otp_vmon3ovth,//vmon3 overvoltage threshold configuration  
    output wire  [3:0]otp_vmon3uvth,//vmon3 undervoltage threshold configuration 
    output wire  [3:0]otp_vmon4ovth,//vmon4 overvoltage threshold configuration  
    output wire  [3:0]otp_vmon4uvth,//vmon4 undervoltage threshold configuration 
    output wire  [3:0]vmonen,//vmon{4,3,2,1} monitoring enable ,form main otp  
    output wire     bisten_cmon,//None 
    output wire     bisten_vddio,//None 
    output wire     bisten_mon1,//None 
    output wire     bisten_mon2,//None 
    output wire     bisten_mon3,//None 
    output wire     bisten_mon4,//None 
    output wire     bistflt,//None 
    output wire     bistplup_fsob,//None 
    output wire     bistplup_pgood,//None 
    output wire     bistplup_rstb,//None 
    output wire     vdig_fs_bistflt,//None 
    output wire     bisten_tsd,//None 
    output wire  [0:0]bistflt_tsd//None
 );

wire   xvsupuv;//I
assign xvsupuv = xsupuv;
wire   psync;//I
assign psync = psyncind;
wire   vboostuvh;//I
assign vboostuvh = boostuv;
wire   vboostov;//I
assign vboostov = boostov;
wire   vboostot;//I
assign vboostot = boostot;
wire   vpre_sta;//I
assign vpre_sta = ssready;
wire   errmon;//I
assign errmon = errmona;
wire   fccu1;//I
assign fccu1 = fccu1a;
wire   fccu2;//I
assign fccu2 = fccu2a;
wire   fs0b_sns;//I
assign fs0b_sns = fs0bfb;
wire   pgood_sns;//I
assign pgood_sns = pgoodfb;
wire   rstb_sns;//I
assign rstb_sns = rstbfb;
wire    [3:0]vmon_ov;//I
assign vmon_ov = ov_mona;
wire    [3:0]vmon_uv;//I
assign vmon_uv = uv_mona;
wire   vcoremon_ov;//I
assign vcoremon_ov = ov_cmona;
wire   vcoremon_uv;//I
assign vcoremon_uv = uv_cmona;
wire   vddio_ov;//I
assign vddio_ov = ov_vddioa;
wire   vddio_uv;//I
assign vddio_uv = uv_vddioa;
wire   rstb_drv;
assign rstb = rstb_drv;//O
wire   pgood_drv;
assign pgood = pgood_drv;//O
wire   fs0b_drv;
assign fs0b = fs0b_drv;//O
wire    [4:0]svs_offset;
assign reg_svs_offset = svs_offset;//O
wire   vsupcfg;
assign vsup_cfg = vsupcfg;//O
wire    [2:0]vb1gmcomp;
assign otp_vb1gmcomp = vb1gmcomp;//O
wire    [1:0]vb1indopt;
assign otp_vb1indopt = vb1indopt;//O
wire    [1:0]vb1swilim;
assign otp_vb1swilim = vb1swilim;//O
wire    [2:0]vb2gmcomp;
assign otp_vb2gmcomp = vb2gmcomp;//O
wire    [1:0]vb2indopt;
assign otp_vb2indopt = vb2indopt;//O
wire    [1:0]vb2swilim;
assign otp_vb2swilim = vb2swilim;//O
wire    [2:0]vb3gmcomp;
assign otp_vb3gmcomp = vb3gmcomp;//O
wire    [1:0]vb3indopt;
assign otp_vb3indopt = vb3indopt;//O
wire    [1:0]vb3swilim;
assign otp_vb3swilim = vb3swilim;//O
wire   vb12multiph;
assign otp_vb12multiph = vb12multiph;//O
wire   pll_sel;
assign otp_pll_sel = pll_sel;//O
wire    [2:0]vbst_ph;
assign otp_vbst_ph = vbst_ph;//O
wire    [2:0]buck1_ph;
assign otp_vbuck1_ph = buck1_ph;//O
wire    [2:0]buck2_ph;
assign otp_vbuck2_ph = buck2_ph;//O
wire    [2:0]buck3_ph;
assign otp_vbuck3_ph = buck3_ph;//O
wire   vpre_clk_sel;
assign otp_vpre_clk_sel = vpre_clk_sel;//O
wire    [2:0]vpre_ph;
assign otp_vpre_ph = vpre_ph;//O
wire    [3:0]vcoreovth;
assign otp_vcoreovth = vcoreovth;//O
wire    [3:0]vcoreuvth;
assign otp_vcoreuvth = vcoreuvth;//O
wire   vddio_v;
assign otp_vddio_v = vddio_v;//O
wire    [3:0]vddioovth;
assign otp_vddioovth = vddioovth;//O
wire    [3:0]vddiouvth;
assign otp_vddiouvth = vddiouvth;//O
wire    [3:0]vmon1ovth;
assign otp_vmon1ovth = vmon1ovth;//O
wire    [3:0]vmon1uvth;
assign otp_vmon1uvth = vmon1uvth;//O
wire    [3:0]vmon2ovth;
assign otp_vmon2ovth = vmon2ovth;//O
wire    [3:0]vmon2uvth;
assign otp_vmon2uvth = vmon2uvth;//O
wire    [3:0]vmon3ovth;
assign otp_vmon3ovth = vmon3ovth;//O
wire    [3:0]vmon3uvth;
assign otp_vmon3uvth = vmon3uvth;//O
wire    [3:0]vmon4ovth;
assign otp_vmon4ovth = vmon4ovth;//O
wire    [3:0]vmon4uvth;
assign otp_vmon4uvth = vmon4uvth;//O
wire    [3:0]vmon_en;
assign vmonen = vmon_en;//O
endmodule