module register_otp_main_apb_cfg (
                 clk
                ,rst_n
                ,pwrite
                ,psel
                ,penable
                ,paddr
                ,pwdata
                ,prdata
                ,vprev
                ,vpresc
                ,vpresrhs
                ,vpreilim
                ,vbstv
                ,vpre_mode
                ,vbstsc
                ,vbsttontime
                ,boosten
                ,vbstsr
                ,vb1v
                ,vb12multiph
                ,vb1swilim
                ,vb1indopt
                ,vb2v
                ,vb2swilim
                ,buck2en
                ,vb2indopt
                ,vb3v
                ,vb3indopt
                ,buck3en
                ,vb3swilim
                ,vb1gmcomp
                ,vb2gmcomp
                ,ldo1v
                ,ldo1ilim
                ,ldo2v
                ,ldo2ilim
                ,vb1s
                ,vb2s
                ,ldo1s
                ,ldo2s
                ,vb3s
                ,tslot
                ,dvs_buck3
                ,dvs_buck12
                ,vpre_ph
                ,vbst_ph
                ,buck1_ph
                ,buck2_ph
                ,buck3_ph
                ,pll_sel
                ,vpre_clk_sel
                ,vbst_clk_sel
                ,buck1_clk_sel
                ,buck2_clk_sel
                ,buck3_clk_sel
                ,conf_tsd
                ,psync_en
                ,psync_cfg
                ,autoretry_en
                ,autoretry_infinite
                ,vpre_off_dly
                ,vsupcfg
                ,m_i2cdevaddr
                ,vddio_reg_assign
                ,deviceid
                );
input           clk;
input           rst_n;
input           pwrite;
input           psel;
input           penable;
input  [31:0]   paddr;
input  [7:0]    pwdata;
output [7:0]    prdata;
output [5:0]    vprev;
output [5:0]    vpresc;
output [1:0]    vpresrhs;
output [1:0]    vpreilim;
output [3:0]    vbstv;
output          vpre_mode;
output [4:0]    vbstsc;
output [1:0]    vbsttontime;
output          boosten;
output [1:0]    vbstsr;
output [7:0]    vb1v;
output          vb12multiph;
output [1:0]    vb1swilim;
output [1:0]    vb1indopt;
output [7:0]    vb2v;
output [1:0]    vb2swilim;
output          buck2en;
output [1:0]    vb2indopt;
output [4:0]    vb3v;
output [1:0]    vb3indopt;
output          buck3en;
output [1:0]    vb3swilim;
output [2:0]    vb1gmcomp;
output [2:0]    vb2gmcomp;
output [2:0]    ldo1v;
output          ldo1ilim;
output [2:0]    ldo2v;
output          ldo2ilim;
output [2:0]    vb1s;
output [2:0]    vb2s;
output [2:0]    ldo1s;
output [2:0]    ldo2s;
output [2:0]    vb3s;
output          tslot;
output [1:0]    dvs_buck3;
output [1:0]    dvs_buck12;
output [2:0]    vpre_ph;
output [2:0]    vbst_ph;
output [2:0]    buck1_ph;
output [2:0]    buck2_ph;
output [2:0]    buck3_ph;
output          pll_sel;
output          vpre_clk_sel;
output          vbst_clk_sel;
output          buck1_clk_sel;
output          buck2_clk_sel;
output          buck3_clk_sel;
output [5:0]    conf_tsd;
output          psync_en;
output          psync_cfg;
output          autoretry_en;
output          autoretry_infinite;
output          vpre_off_dly;
output          vsupcfg;
output [3:0]    m_i2cdevaddr;
output [2:0]    vddio_reg_assign;
output [7:0]    deviceid;
wire            clk;
wire            rst_n;
wire            pwrite;
wire            psel;
wire            penable;
wire [31:0]     paddr;
wire [7:0]      pwdata;
reg  [7:0]      prdata;
reg  [5:0]      vprev;
reg  [5:0]      vpresc;
reg  [1:0]      vpresrhs;
reg  [1:0]      vpreilim;
reg  [3:0]      vbstv;
reg             vpre_mode;
reg  [4:0]      vbstsc;
reg  [1:0]      vbsttontime;
reg             boosten;
reg  [1:0]      vbstsr;
reg  [7:0]      vb1v;
reg             vb12multiph;
reg  [1:0]      vb1swilim;
reg  [1:0]      vb1indopt;
reg  [7:0]      vb2v;
reg  [1:0]      vb2swilim;
reg             buck2en;
reg  [1:0]      vb2indopt;
reg  [4:0]      vb3v;
reg  [1:0]      vb3indopt;
reg             buck3en;
reg  [1:0]      vb3swilim;
reg  [2:0]      vb1gmcomp;
reg  [2:0]      vb2gmcomp;
reg  [2:0]      ldo1v;
reg             ldo1ilim;
reg  [2:0]      ldo2v;
reg             ldo2ilim;
reg  [2:0]      vb1s;
reg  [2:0]      vb2s;
reg  [2:0]      ldo1s;
reg  [2:0]      ldo2s;
reg  [2:0]      vb3s;
reg             tslot;
reg  [1:0]      dvs_buck3;
reg  [1:0]      dvs_buck12;
reg  [2:0]      vpre_ph;
reg  [2:0]      vbst_ph;
reg  [2:0]      buck1_ph;
reg  [2:0]      buck2_ph;
reg  [2:0]      buck3_ph;
reg             pll_sel;
reg             vpre_clk_sel;
reg             vbst_clk_sel;
reg             buck1_clk_sel;
reg             buck2_clk_sel;
reg             buck3_clk_sel;
reg  [5:0]      conf_tsd;
reg             psync_en;
reg             psync_cfg;
reg             autoretry_en;
reg             autoretry_infinite;
reg             vpre_off_dly;
reg             vsupcfg;
reg  [3:0]      m_i2cdevaddr;
reg  [2:0]      vddio_reg_assign;
reg  [7:0]      deviceid;
wire [7:0]      OTP_CFG_VPRE_1;
wire [7:0]      OTP_CFG_VPRE_2;
wire [7:0]      OTP_CFG_VPRE_3;
wire [7:0]      OTP_CFG_BOOST_1;
wire [7:0]      OTP_CFG_BOOST_2;
wire [7:0]      OTP_CFG_BOOST_3;
wire [7:0]      OTP_CFG_BUCK1_1;
wire [7:0]      OTP_CFG_BUCK1_2;
wire [7:0]      OTP_CFG_BUCK2_1;
wire [7:0]      OTP_CFG_BUCK2_2;
wire [7:0]      OTP_CFG_BUCK3_1;
wire [7:0]      OTP_CFG_BUCK3_2;
wire [7:0]      OTP_CFG_LDO;
wire [7:0]      OTP_CFG_SEQ_1;
wire [7:0]      OTP_CFG_SEQ_2;
wire [7:0]      OTP_CFG_SEQ_3;
wire [7:0]      OTP_CFG_CLOCK_1;
wire [7:0]      OTP_CFG_CLOCK_2;
wire [7:0]      OTP_CFG_CLOCK_3;
wire [7:0]      OTP_CFG_CLOCK_4;
wire [7:0]      OTP_CFG_SM_1;
wire [7:0]      OTP_CFG_SM_2;
wire [7:0]      OTP_CFG_VSUP_UV;
wire [7:0]      OTP_CFG_I2C;
wire [7:0]      OTP_CFG_OV;
wire [7:0]      OTP_CFG_DEVID;
wire            otp_cfg_vpre_1_wr;
wire            otp_cfg_vpre_1_rd;
wire            otp_cfg_vpre_2_wr;
wire            otp_cfg_vpre_2_rd;
wire            otp_cfg_vpre_3_wr;
wire            otp_cfg_vpre_3_rd;
wire            otp_cfg_boost_1_wr;
wire            otp_cfg_boost_1_rd;
wire            otp_cfg_boost_2_wr;
wire            otp_cfg_boost_2_rd;
wire            otp_cfg_boost_3_wr;
wire            otp_cfg_boost_3_rd;
wire            otp_cfg_buck1_1_wr;
wire            otp_cfg_buck1_1_rd;
wire            otp_cfg_buck1_2_wr;
wire            otp_cfg_buck1_2_rd;
wire            otp_cfg_buck2_1_wr;
wire            otp_cfg_buck2_1_rd;
wire            otp_cfg_buck2_2_wr;
wire            otp_cfg_buck2_2_rd;
wire            otp_cfg_buck3_1_wr;
wire            otp_cfg_buck3_1_rd;
wire            otp_cfg_buck3_2_wr;
wire            otp_cfg_buck3_2_rd;
wire            otp_cfg_ldo_wr;
wire            otp_cfg_ldo_rd;
wire            otp_cfg_seq_1_wr;
wire            otp_cfg_seq_1_rd;
wire            otp_cfg_seq_2_wr;
wire            otp_cfg_seq_2_rd;
wire            otp_cfg_seq_3_wr;
wire            otp_cfg_seq_3_rd;
wire            otp_cfg_clock_1_wr;
wire            otp_cfg_clock_1_rd;
wire            otp_cfg_clock_2_wr;
wire            otp_cfg_clock_2_rd;
wire            otp_cfg_clock_3_wr;
wire            otp_cfg_clock_3_rd;
wire            otp_cfg_clock_4_wr;
wire            otp_cfg_clock_4_rd;
wire            otp_cfg_sm_1_wr;
wire            otp_cfg_sm_1_rd;
wire            otp_cfg_sm_2_wr;
wire            otp_cfg_sm_2_rd;
wire            otp_cfg_vsup_uv_wr;
wire            otp_cfg_vsup_uv_rd;
wire            otp_cfg_i2c_wr;
wire            otp_cfg_i2c_rd;
wire            otp_cfg_ov_wr;
wire            otp_cfg_ov_rd;
wire            otp_cfg_devid_wr;
wire            otp_cfg_devid_rd;
wire            reg_wr;
wire            reg_rd;
assign reg_wr = psel & pwrite & penable;
assign reg_rd = psel & (~pwrite) & (~penable);
assign otp_cfg_vpre_1_wr = (paddr == 32'h80 + 8'h14) & reg_wr;
assign otp_cfg_vpre_1_rd = (paddr == 32'h80 + 8'h14) & reg_rd;
assign otp_cfg_vpre_2_wr = (paddr == 32'h80 + 8'h15) & reg_wr;
assign otp_cfg_vpre_2_rd = (paddr == 32'h80 + 8'h15) & reg_rd;
assign otp_cfg_vpre_3_wr = (paddr == 32'h80 + 8'h16) & reg_wr;
assign otp_cfg_vpre_3_rd = (paddr == 32'h80 + 8'h16) & reg_rd;
assign otp_cfg_boost_1_wr = (paddr == 32'h80 + 8'h17) & reg_wr;
assign otp_cfg_boost_1_rd = (paddr == 32'h80 + 8'h17) & reg_rd;
assign otp_cfg_boost_2_wr = (paddr == 32'h80 + 8'h18) & reg_wr;
assign otp_cfg_boost_2_rd = (paddr == 32'h80 + 8'h18) & reg_rd;
assign otp_cfg_boost_3_wr = (paddr == 32'h80 + 8'h19) & reg_wr;
assign otp_cfg_boost_3_rd = (paddr == 32'h80 + 8'h19) & reg_rd;
assign otp_cfg_buck1_1_wr = (paddr == 32'h80 + 8'h1A) & reg_wr;
assign otp_cfg_buck1_1_rd = (paddr == 32'h80 + 8'h1A) & reg_rd;
assign otp_cfg_buck1_2_wr = (paddr == 32'h80 + 8'h1B) & reg_wr;
assign otp_cfg_buck1_2_rd = (paddr == 32'h80 + 8'h1B) & reg_rd;
assign otp_cfg_buck2_1_wr = (paddr == 32'h80 + 8'h1C) & reg_wr;
assign otp_cfg_buck2_1_rd = (paddr == 32'h80 + 8'h1C) & reg_rd;
assign otp_cfg_buck2_2_wr = (paddr == 32'h80 + 8'h1D) & reg_wr;
assign otp_cfg_buck2_2_rd = (paddr == 32'h80 + 8'h1D) & reg_rd;
assign otp_cfg_buck3_1_wr = (paddr == 32'h80 + 8'h1E) & reg_wr;
assign otp_cfg_buck3_1_rd = (paddr == 32'h80 + 8'h1E) & reg_rd;
assign otp_cfg_buck3_2_wr = (paddr == 32'h80 + 8'h1F) & reg_wr;
assign otp_cfg_buck3_2_rd = (paddr == 32'h80 + 8'h1F) & reg_rd;
assign otp_cfg_ldo_wr = (paddr == 32'h80 + 8'h20) & reg_wr;
assign otp_cfg_ldo_rd = (paddr == 32'h80 + 8'h20) & reg_rd;
assign otp_cfg_seq_1_wr = (paddr == 32'h80 + 8'h21) & reg_wr;
assign otp_cfg_seq_1_rd = (paddr == 32'h80 + 8'h21) & reg_rd;
assign otp_cfg_seq_2_wr = (paddr == 32'h80 + 8'h22) & reg_wr;
assign otp_cfg_seq_2_rd = (paddr == 32'h80 + 8'h22) & reg_rd;
assign otp_cfg_seq_3_wr = (paddr == 32'h80 + 8'h23) & reg_wr;
assign otp_cfg_seq_3_rd = (paddr == 32'h80 + 8'h23) & reg_rd;
assign otp_cfg_clock_1_wr = (paddr == 32'h80 + 8'h24) & reg_wr;
assign otp_cfg_clock_1_rd = (paddr == 32'h80 + 8'h24) & reg_rd;
assign otp_cfg_clock_2_wr = (paddr == 32'h80 + 8'h25) & reg_wr;
assign otp_cfg_clock_2_rd = (paddr == 32'h80 + 8'h25) & reg_rd;
assign otp_cfg_clock_3_wr = (paddr == 32'h80 + 8'h26) & reg_wr;
assign otp_cfg_clock_3_rd = (paddr == 32'h80 + 8'h26) & reg_rd;
assign otp_cfg_clock_4_wr = (paddr == 32'h80 + 8'h27) & reg_wr;
assign otp_cfg_clock_4_rd = (paddr == 32'h80 + 8'h27) & reg_rd;
assign otp_cfg_sm_1_wr = (paddr == 32'h80 + 8'h28) & reg_wr;
assign otp_cfg_sm_1_rd = (paddr == 32'h80 + 8'h28) & reg_rd;
assign otp_cfg_sm_2_wr = (paddr == 32'h80 + 8'h29) & reg_wr;
assign otp_cfg_sm_2_rd = (paddr == 32'h80 + 8'h29) & reg_rd;
assign otp_cfg_vsup_uv_wr = (paddr == 32'h80 + 8'h2A) & reg_wr;
assign otp_cfg_vsup_uv_rd = (paddr == 32'h80 + 8'h2A) & reg_rd;
assign otp_cfg_i2c_wr = (paddr == 32'h80 + 8'h2B) & reg_wr;
assign otp_cfg_i2c_rd = (paddr == 32'h80 + 8'h2B) & reg_rd;
assign otp_cfg_ov_wr = (paddr == 32'h80 + 8'h2C) & reg_wr;
assign otp_cfg_ov_rd = (paddr == 32'h80 + 8'h2C) & reg_rd;
assign otp_cfg_devid_wr = (paddr == 32'h80 + 8'h2D) & reg_wr;
assign otp_cfg_devid_rd = (paddr == 32'h80 + 8'h2D) & reg_rd;
assign OTP_CFG_VPRE_1[5:0] = vprev;
assign OTP_CFG_VPRE_1[7:6] = 2'h0;
assign OTP_CFG_VPRE_2[5:0] = vpresc;
assign OTP_CFG_VPRE_2[7:6] = 2'h0;
assign OTP_CFG_VPRE_3[1:0] = vpresrhs;
assign OTP_CFG_VPRE_3[5:2] = 4'h0;
assign OTP_CFG_VPRE_3[7:6] = vpreilim;
assign OTP_CFG_BOOST_1[3:0] = vbstv;
assign OTP_CFG_BOOST_1[4] = 1'h0;
assign OTP_CFG_BOOST_1[5] = vpre_mode;
assign OTP_CFG_BOOST_1[7:6] = 2'h0;
assign OTP_CFG_BOOST_2[4:0] = vbstsc;
assign OTP_CFG_BOOST_2[6:5] = vbsttontime;
assign OTP_CFG_BOOST_2[7] = boosten;
assign OTP_CFG_BOOST_3[1:0] = vbstsr;
assign OTP_CFG_BOOST_3[7:2] = 6'h0;
assign OTP_CFG_BUCK1_1[7:0] = vb1v;
assign OTP_CFG_BUCK1_2[0] = vb12multiph;
assign OTP_CFG_BUCK1_2[2:1] = vb1swilim;
assign OTP_CFG_BUCK1_2[4:3] = vb1indopt;
assign OTP_CFG_BUCK1_2[7:5] = 3'h0;
assign OTP_CFG_BUCK2_1[7:0] = vb2v;
assign OTP_CFG_BUCK2_2[3:2] = vb2swilim;
assign OTP_CFG_BUCK2_2[4] = buck2en;
assign OTP_CFG_BUCK1_2[6:5] = vb2indopt;
assign OTP_CFG_BUCK1_2[7] = 1'h0;
assign OTP_CFG_BUCK3_1[4:0] = vb3v;
assign OTP_CFG_BUCK3_1[6:5] = vb3indopt;
assign OTP_CFG_BUCK3_1[7] = buck3en;
assign OTP_CFG_BUCK3_2[1:0] = vb3swilim;
assign OTP_CFG_BUCK3_2[4:2] = vb1gmcomp;
assign OTP_CFG_BUCK3_2[7:5] = vb2gmcomp;
assign OTP_CFG_LDO[2:0] = ldo1v;
assign OTP_CFG_LDO[3] = ldo1ilim;
assign OTP_CFG_LDO[6:4] = ldo2v;
assign OTP_CFG_LDO[7] = ldo2ilim;
assign OTP_CFG_SEQ_1[2:0] = vb1s;
assign OTP_CFG_SEQ_1[5:3] = vb2s;
assign OTP_CFG_SEQ_1[7:6] = 2'h0;
assign OTP_CFG_SEQ_2[2:0] = ldo1s;
assign OTP_CFG_SEQ_2[5:3] = ldo2s;
assign OTP_CFG_SEQ_2[7:6] = 2'h0;
assign OTP_CFG_SEQ_3[2:0] = vb3s;
assign OTP_CFG_SEQ_3[3] = tslot;
assign OTP_CFG_SEQ_3[5:4] = dvs_buck3;
assign OTP_CFG_SEQ_3[7:6] = dvs_buck12;
assign OTP_CFG_CLOCK_1[5:3] = vpre_ph;
assign OTP_CFG_CLOCK_1[2:0] = 3'h0;
assign OTP_CFG_CLOCK_1[7:6] = 2'h0;
assign OTP_CFG_CLOCK_2[2:0] = vbst_ph;
assign OTP_CFG_CLOCK_2[5:3] = buck1_ph;
assign OTP_CFG_CLOCK_2[7:6] = 2'h0;
assign OTP_CFG_CLOCK_3[2:0] = buck2_ph;
assign OTP_CFG_CLOCK_3[5:3] = buck3_ph;
assign OTP_CFG_CLOCK_3[7:6] = 2'h0;
assign OTP_CFG_CLOCK_4[2] = pll_sel;
assign OTP_CFG_CLOCK_4[1:0] = 2'h0;
assign OTP_CFG_CLOCK_4[3] = vpre_clk_sel;
assign OTP_CFG_CLOCK_4[4] = vbst_clk_sel;
assign OTP_CFG_CLOCK_4[5] = buck1_clk_sel;
assign OTP_CFG_CLOCK_4[6] = buck2_clk_sel;
assign OTP_CFG_CLOCK_4[7] = buck3_clk_sel;
assign OTP_CFG_SM_1[5:0] = conf_tsd;
assign OTP_CFG_SM_1[7:6] = 2'h0;
assign OTP_CFG_SM_2[0] = psync_en;
assign OTP_CFG_SM_2[1] = psync_cfg;
assign OTP_CFG_SM_2[2] = autoretry_en;
assign OTP_CFG_SM_2[3] = autoretry_infinite;
assign OTP_CFG_SM_2[4] = vpre_off_dly;
assign OTP_CFG_SM_2[7:5] = 3'h0;
assign OTP_CFG_VSUP_UV[0] = vsupcfg;
assign OTP_CFG_VSUP_UV[7:1] = 7'h0;
assign OTP_CFG_I2C[3:0] = m_i2cdevaddr;
assign OTP_CFG_I2C[7:4] = 4'h0;
assign OTP_CFG_OV[2:0] = vddio_reg_assign;
assign OTP_CFG_OV[7:3] = 5'h0;
assign OTP_CFG_DEVID[7:0] = deviceid;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vprev <= 6'h0;
    end
    else if(otp_cfg_vpre_1_wr) begin
        vprev <= pwdata[5:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpresc <= 6'h0;
    end
    else if(otp_cfg_vpre_2_wr) begin
        vpresc <= pwdata[5:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpresrhs <= 2'h0;
    end
    else if(otp_cfg_vpre_3_wr) begin
        vpresrhs <= pwdata[1:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpreilim <= 2'h0;
    end
    else if(otp_cfg_vpre_3_wr) begin
        vpreilim <= pwdata[7:6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbstv <= 4'h0;
    end
    else if(otp_cfg_boost_1_wr) begin
        vbstv <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpre_mode <= 1'h0;
    end
    else if(otp_cfg_boost_1_wr) begin
        vpre_mode <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbstsc <= 5'h0;
    end
    else if(otp_cfg_boost_2_wr) begin
        vbstsc <= pwdata[4:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbsttontime <= 2'h0;
    end
    else if(otp_cfg_boost_2_wr) begin
        vbsttontime <= pwdata[6:5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        boosten <= 1'h0;
    end
    else if(otp_cfg_boost_2_wr) begin
        boosten <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbstsr <= 2'h0;
    end
    else if(otp_cfg_boost_3_wr) begin
        vbstsr <= pwdata[1:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb1v <= 8'h0;
    end
    else if(otp_cfg_buck1_1_wr) begin
        vb1v <= pwdata[7:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb12multiph <= 1'h0;
    end
    else if(otp_cfg_buck1_2_wr) begin
        vb12multiph <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb1swilim <= 2'h0;
    end
    else if(otp_cfg_buck1_2_wr) begin
        vb1swilim <= pwdata[2:1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb1indopt <= 2'h0;
    end
    else if(otp_cfg_buck1_2_wr) begin
        vb1indopt <= pwdata[4:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb2v <= 8'h0;
    end
    else if(otp_cfg_buck2_1_wr) begin
        vb2v <= pwdata[7:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb2swilim <= 2'h0;
    end
    else if(otp_cfg_buck2_2_wr) begin
        vb2swilim <= pwdata[3:2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2en <= 1'h0;
    end
    else if(otp_cfg_buck2_2_wr) begin
        buck2en <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb2indopt <= 2'h0;
    end
    else if(otp_cfg_buck1_2_wr) begin
        vb2indopt <= pwdata[6:5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb3v <= 5'h0;
    end
    else if(otp_cfg_buck3_1_wr) begin
        vb3v <= pwdata[4:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb3indopt <= 2'h0;
    end
    else if(otp_cfg_buck3_1_wr) begin
        vb3indopt <= pwdata[6:5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3en <= 1'h0;
    end
    else if(otp_cfg_buck3_1_wr) begin
        buck3en <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb3swilim <= 2'h0;
    end
    else if(otp_cfg_buck3_2_wr) begin
        vb3swilim <= pwdata[1:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb1gmcomp <= 3'h0;
    end
    else if(otp_cfg_buck3_2_wr) begin
        vb1gmcomp <= pwdata[4:2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb2gmcomp <= 3'h0;
    end
    else if(otp_cfg_buck3_2_wr) begin
        vb2gmcomp <= pwdata[7:5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1v <= 3'h0;
    end
    else if(otp_cfg_ldo_wr) begin
        ldo1v <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1ilim <= 1'h0;
    end
    else if(otp_cfg_ldo_wr) begin
        ldo1ilim <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2v <= 3'h0;
    end
    else if(otp_cfg_ldo_wr) begin
        ldo2v <= pwdata[6:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2ilim <= 1'h0;
    end
    else if(otp_cfg_ldo_wr) begin
        ldo2ilim <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb1s <= 3'h0;
    end
    else if(otp_cfg_seq_1_wr) begin
        vb1s <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb2s <= 3'h0;
    end
    else if(otp_cfg_seq_1_wr) begin
        vb2s <= pwdata[5:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1s <= 3'h0;
    end
    else if(otp_cfg_seq_2_wr) begin
        ldo1s <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2s <= 3'h0;
    end
    else if(otp_cfg_seq_2_wr) begin
        ldo2s <= pwdata[5:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vb3s <= 3'h0;
    end
    else if(otp_cfg_seq_3_wr) begin
        vb3s <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        tslot <= 1'h0;
    end
    else if(otp_cfg_seq_3_wr) begin
        tslot <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dvs_buck3 <= 2'h0;
    end
    else if(otp_cfg_seq_3_wr) begin
        dvs_buck3 <= pwdata[5:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dvs_buck12 <= 2'h0;
    end
    else if(otp_cfg_seq_3_wr) begin
        dvs_buck12 <= pwdata[7:6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpre_ph <= 3'h0;
    end
    else if(otp_cfg_clock_1_wr) begin
        vpre_ph <= pwdata[5:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbst_ph <= 3'h0;
    end
    else if(otp_cfg_clock_2_wr) begin
        vbst_ph <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1_ph <= 3'h0;
    end
    else if(otp_cfg_clock_2_wr) begin
        buck1_ph <= pwdata[5:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2_ph <= 3'h0;
    end
    else if(otp_cfg_clock_3_wr) begin
        buck2_ph <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3_ph <= 3'h0;
    end
    else if(otp_cfg_clock_3_wr) begin
        buck3_ph <= pwdata[5:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pll_sel <= 1'h0;
    end
    else if(otp_cfg_clock_4_wr) begin
        pll_sel <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpre_clk_sel <= 1'h0;
    end
    else if(otp_cfg_clock_4_wr) begin
        vpre_clk_sel <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbst_clk_sel <= 1'h0;
    end
    else if(otp_cfg_clock_4_wr) begin
        vbst_clk_sel <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1_clk_sel <= 1'h0;
    end
    else if(otp_cfg_clock_4_wr) begin
        buck1_clk_sel <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2_clk_sel <= 1'h0;
    end
    else if(otp_cfg_clock_4_wr) begin
        buck2_clk_sel <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3_clk_sel <= 1'h0;
    end
    else if(otp_cfg_clock_4_wr) begin
        buck3_clk_sel <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        conf_tsd <= 6'h0;
    end
    else if(otp_cfg_sm_1_wr) begin
        conf_tsd <= pwdata[5:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        psync_en <= 1'h0;
    end
    else if(otp_cfg_sm_2_wr) begin
        psync_en <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        psync_cfg <= 1'h0;
    end
    else if(otp_cfg_sm_2_wr) begin
        psync_cfg <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        autoretry_en <= 1'h0;
    end
    else if(otp_cfg_sm_2_wr) begin
        autoretry_en <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        autoretry_infinite <= 1'h0;
    end
    else if(otp_cfg_sm_2_wr) begin
        autoretry_infinite <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpre_off_dly <= 1'h0;
    end
    else if(otp_cfg_sm_2_wr) begin
        vpre_off_dly <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupcfg <= 1'h0;
    end
    else if(otp_cfg_vsup_uv_wr) begin
        vsupcfg <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        m_i2cdevaddr <= 4'h0;
    end
    else if(otp_cfg_i2c_wr) begin
        m_i2cdevaddr <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_reg_assign <= 3'h0;
    end
    else if(otp_cfg_ov_wr) begin
        vddio_reg_assign <= pwdata[2:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        deviceid <= 8'h0;
    end
    else if(otp_cfg_devid_wr) begin
        deviceid <= pwdata[7:0];
    end
end
always@(*) begin
    case(paddr)
        32'h80 + 8'h14 : prdata = OTP_CFG_VPRE_1;
        32'h80 + 8'h15 : prdata = OTP_CFG_VPRE_2;
        32'h80 + 8'h16 : prdata = OTP_CFG_VPRE_3;
        32'h80 + 8'h17 : prdata = OTP_CFG_BOOST_1;
        32'h80 + 8'h18 : prdata = OTP_CFG_BOOST_2;
        32'h80 + 8'h19 : prdata = OTP_CFG_BOOST_3;
        32'h80 + 8'h1A : prdata = OTP_CFG_BUCK1_1;
        32'h80 + 8'h1B : prdata = OTP_CFG_BUCK1_2;
        32'h80 + 8'h1C : prdata = OTP_CFG_BUCK2_1;
        32'h80 + 8'h1D : prdata = OTP_CFG_BUCK2_2;
        32'h80 + 8'h1E : prdata = OTP_CFG_BUCK3_1;
        32'h80 + 8'h1F : prdata = OTP_CFG_BUCK3_2;
        32'h80 + 8'h20 : prdata = OTP_CFG_LDO;
        32'h80 + 8'h21 : prdata = OTP_CFG_SEQ_1;
        32'h80 + 8'h22 : prdata = OTP_CFG_SEQ_2;
        32'h80 + 8'h23 : prdata = OTP_CFG_SEQ_3;
        32'h80 + 8'h24 : prdata = OTP_CFG_CLOCK_1;
        32'h80 + 8'h25 : prdata = OTP_CFG_CLOCK_2;
        32'h80 + 8'h26 : prdata = OTP_CFG_CLOCK_3;
        32'h80 + 8'h27 : prdata = OTP_CFG_CLOCK_4;
        32'h80 + 8'h28 : prdata = OTP_CFG_SM_1;
        32'h80 + 8'h29 : prdata = OTP_CFG_SM_2;
        32'h80 + 8'h2A : prdata = OTP_CFG_VSUP_UV;
        32'h80 + 8'h2B : prdata = OTP_CFG_I2C;
        32'h80 + 8'h2C : prdata = OTP_CFG_OV;
        32'h80 + 8'h2D : prdata = OTP_CFG_DEVID;
        default:prdata = 8'b0;
    endcase
end
endmodule