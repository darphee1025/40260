module register_otp_fs_apb_cfg (
                 clk
                ,rst_n
                ,pwrite
                ,psel
                ,penable
                ,paddr
                ,pwdata
                ,prdata
                ,vcore_v
                ,vcoreovth
                ,vddioovth
                ,vcore_svs_clamp
                ,vddio_v
                ,vmon1ovth
                ,vmon2ovth
                ,vmon3ovth
                ,vmon4ovth
                ,vcoreuvth
                ,vddiouvth
                ,vmon1uvth
                ,vmon2uvth
                ,vmon3uvth
                ,vmon4uvth
                ,pgood_vcore
                ,pgood_vddio
                ,pgood_vmon1
                ,pgood_vmon2
                ,pgood_vmon3
                ,pgood_vmon4
                ,pgood_rstb
                ,abist1_vcore
                ,abist1_vddio
                ,abist1_vmon1
                ,abist1_vmon2
                ,abist1_vmon3
                ,abist1_vmon4
                ,vmon1_en
                ,vmon2_en
                ,vmon3_en
                ,vmon4_en
                ,fccu_en
                ,errmon_en
                ,wd_selection
                ,wd_dis
                ,fs_i2cdevaddr
                ,flt_recovery_en
                ,vddio_ov_dglt
                ,vddio_uv_dglt
                ,vcore_ov_dglt
                ,vcore_uv_dglt
                ,vmonx_ov_dglt
                ,vmonx_uv_dglt
                );
input           clk;
input           rst_n;
input           pwrite;
input           psel;
input           penable;
input  [31:0]   paddr;
input  [7:0]    pwdata;
output [7:0]    prdata;
output [7:0]    vcore_v;
output [3:0]    vcoreovth;
output [3:0]    vddioovth;
output [4:0]    vcore_svs_clamp;
output          vddio_v;
output [3:0]    vmon1ovth;
output [3:0]    vmon2ovth;
output [3:0]    vmon3ovth;
output [3:0]    vmon4ovth;
output [3:0]    vcoreuvth;
output [3:0]    vddiouvth;
output [3:0]    vmon1uvth;
output [3:0]    vmon2uvth;
output [3:0]    vmon3uvth;
output [3:0]    vmon4uvth;
output          pgood_vcore;
output          pgood_vddio;
output          pgood_vmon1;
output          pgood_vmon2;
output          pgood_vmon3;
output          pgood_vmon4;
output          pgood_rstb;
output          abist1_vcore;
output          abist1_vddio;
output          abist1_vmon1;
output          abist1_vmon2;
output          abist1_vmon3;
output          abist1_vmon4;
output          vmon1_en;
output          vmon2_en;
output          vmon3_en;
output          vmon4_en;
output          fccu_en;
output          errmon_en;
output          wd_selection;
output          wd_dis;
output [3:0]    fs_i2cdevaddr;
output          flt_recovery_en;
output          vddio_ov_dglt;
output [1:0]    vddio_uv_dglt;
output          vcore_ov_dglt;
output [1:0]    vcore_uv_dglt;
output          vmonx_ov_dglt;
output [1:0]    vmonx_uv_dglt;
wire            clk;
wire            rst_n;
wire            pwrite;
wire            psel;
wire            penable;
wire [31:0]     paddr;
wire [7:0]      pwdata;
reg  [7:0]      prdata;
reg  [7:0]      vcore_v;
reg  [3:0]      vcoreovth;
reg  [3:0]      vddioovth;
reg  [4:0]      vcore_svs_clamp;
reg             vddio_v;
reg  [3:0]      vmon1ovth;
reg  [3:0]      vmon2ovth;
reg  [3:0]      vmon3ovth;
reg  [3:0]      vmon4ovth;
reg  [3:0]      vcoreuvth;
reg  [3:0]      vddiouvth;
reg  [3:0]      vmon1uvth;
reg  [3:0]      vmon2uvth;
reg  [3:0]      vmon3uvth;
reg  [3:0]      vmon4uvth;
reg             pgood_vcore;
reg             pgood_vddio;
reg             pgood_vmon1;
reg             pgood_vmon2;
reg             pgood_vmon3;
reg             pgood_vmon4;
reg             pgood_rstb;
reg             abist1_vcore;
reg             abist1_vddio;
reg             abist1_vmon1;
reg             abist1_vmon2;
reg             abist1_vmon3;
reg             abist1_vmon4;
reg             vmon1_en;
reg             vmon2_en;
reg             vmon3_en;
reg             vmon4_en;
reg             fccu_en;
reg             errmon_en;
reg             wd_selection;
reg             wd_dis;
reg  [3:0]      fs_i2cdevaddr;
reg             flt_recovery_en;
reg             vddio_ov_dglt;
reg  [1:0]      vddio_uv_dglt;
reg             vcore_ov_dglt;
reg  [1:0]      vcore_uv_dglt;
reg             vmonx_ov_dglt;
reg  [1:0]      vmonx_uv_dglt;
wire [7:0]      OTP_CFG_UVOV_1;
wire [7:0]      OTP_CFG_UVOV_2;
wire [7:0]      OTP_CFG_UVOV_3;
wire [7:0]      OTP_CFG_UVOV_4;
wire [7:0]      OTP_CFG_UVOV_5;
wire [7:0]      OTP_CFG_UVOV_6;
wire [7:0]      OTP_CFG_UVOV_7;
wire [7:0]      OTP_CFG_UVOV_8;
wire [7:0]      OTP_CFG_PGOOD;
wire [7:0]      OTP_CFG_ABIST1;
wire [7:0]      OTP_CFG_ASIL;
wire [7:0]      OTP_CFG_I2C;
wire [7:0]      OTP_CFG_DGLT_DUR_1;
wire [7:0]      OTP_CFG_DGLT_DUR_2;
wire            otp_cfg_uvov_1_wr;
wire            otp_cfg_uvov_1_rd;
wire            otp_cfg_uvov_2_wr;
wire            otp_cfg_uvov_2_rd;
wire            otp_cfg_uvov_3_wr;
wire            otp_cfg_uvov_3_rd;
wire            otp_cfg_uvov_4_wr;
wire            otp_cfg_uvov_4_rd;
wire            otp_cfg_uvov_5_wr;
wire            otp_cfg_uvov_5_rd;
wire            otp_cfg_uvov_6_wr;
wire            otp_cfg_uvov_6_rd;
wire            otp_cfg_uvov_7_wr;
wire            otp_cfg_uvov_7_rd;
wire            otp_cfg_uvov_8_wr;
wire            otp_cfg_uvov_8_rd;
wire            otp_cfg_pgood_wr;
wire            otp_cfg_pgood_rd;
wire            otp_cfg_abist1_wr;
wire            otp_cfg_abist1_rd;
wire            otp_cfg_asil_wr;
wire            otp_cfg_asil_rd;
wire            otp_cfg_i2c_wr;
wire            otp_cfg_i2c_rd;
wire            otp_cfg_dglt_dur_1_wr;
wire            otp_cfg_dglt_dur_1_rd;
wire            otp_cfg_dglt_dur_2_wr;
wire            otp_cfg_dglt_dur_2_rd;
wire            reg_wr;
wire            reg_rd;
assign reg_wr = psel & pwrite & penable;
assign reg_rd = psel & (~pwrite) & (~penable);
assign otp_cfg_uvov_1_wr = (paddr == 32'h90 + 8'hA) & reg_wr;
assign otp_cfg_uvov_1_rd = (paddr == 32'h90 + 8'hA) & reg_rd;
assign otp_cfg_uvov_2_wr = (paddr == 32'h90 + 8'hB) & reg_wr;
assign otp_cfg_uvov_2_rd = (paddr == 32'h90 + 8'hB) & reg_rd;
assign otp_cfg_uvov_3_wr = (paddr == 32'h90 + 8'hC) & reg_wr;
assign otp_cfg_uvov_3_rd = (paddr == 32'h90 + 8'hC) & reg_rd;
assign otp_cfg_uvov_4_wr = (paddr == 32'h90 + 8'hD) & reg_wr;
assign otp_cfg_uvov_4_rd = (paddr == 32'h90 + 8'hD) & reg_rd;
assign otp_cfg_uvov_5_wr = (paddr == 32'h90 + 8'hE) & reg_wr;
assign otp_cfg_uvov_5_rd = (paddr == 32'h90 + 8'hE) & reg_rd;
assign otp_cfg_uvov_6_wr = (paddr == 32'h90 + 8'hF) & reg_wr;
assign otp_cfg_uvov_6_rd = (paddr == 32'h90 + 8'hF) & reg_rd;
assign otp_cfg_uvov_7_wr = (paddr == 32'h90 + 8'h10) & reg_wr;
assign otp_cfg_uvov_7_rd = (paddr == 32'h90 + 8'h10) & reg_rd;
assign otp_cfg_uvov_8_wr = (paddr == 32'h90 + 8'h11) & reg_wr;
assign otp_cfg_uvov_8_rd = (paddr == 32'h90 + 8'h11) & reg_rd;
assign otp_cfg_pgood_wr = (paddr == 32'h90 + 8'h12) & reg_wr;
assign otp_cfg_pgood_rd = (paddr == 32'h90 + 8'h12) & reg_rd;
assign otp_cfg_abist1_wr = (paddr == 32'h90 + 8'h13) & reg_wr;
assign otp_cfg_abist1_rd = (paddr == 32'h90 + 8'h13) & reg_rd;
assign otp_cfg_asil_wr = (paddr == 32'h90 + 8'h14) & reg_wr;
assign otp_cfg_asil_rd = (paddr == 32'h90 + 8'h14) & reg_rd;
assign otp_cfg_i2c_wr = (paddr == 32'h90 + 8'h15) & reg_wr;
assign otp_cfg_i2c_rd = (paddr == 32'h90 + 8'h15) & reg_rd;
assign otp_cfg_dglt_dur_1_wr = (paddr == 32'h90 + 8'h16) & reg_wr;
assign otp_cfg_dglt_dur_1_rd = (paddr == 32'h90 + 8'h16) & reg_rd;
assign otp_cfg_dglt_dur_2_wr = (paddr == 32'h90 + 8'h17) & reg_wr;
assign otp_cfg_dglt_dur_2_rd = (paddr == 32'h90 + 8'h17) & reg_rd;
assign OTP_CFG_UVOV_1[7:0] = vcore_v;
assign OTP_CFG_UVOV_2[3:0] = vcoreovth;
assign OTP_CFG_UVOV_2[7:4] = vddioovth;
assign OTP_CFG_UVOV_3[4:0] = vcore_svs_clamp;
assign OTP_CFG_UVOV_3[7:6] = 2'b0;
assign OTP_CFG_UVOV_3[5] = vddio_v;
assign OTP_CFG_UVOV_4[3:0] = vmon1ovth;
assign OTP_CFG_UVOV_4[7:4] = vmon2ovth;
assign OTP_CFG_UVOV_5[3:0] = vmon3ovth;
assign OTP_CFG_UVOV_5[7:4] = vmon4ovth;
assign OTP_CFG_UVOV_6[3:0] = vcoreuvth;
assign OTP_CFG_UVOV_6[7:4] = vddiouvth;
assign OTP_CFG_UVOV_7[3:0] = vmon1uvth;
assign OTP_CFG_UVOV_7[7:4] = vmon2uvth;
assign OTP_CFG_UVOV_8[3:0] = vmon3uvth;
assign OTP_CFG_UVOV_8[7:4] = vmon4uvth;
assign OTP_CFG_PGOOD[0] = pgood_vcore;
assign OTP_CFG_PGOOD[1] = pgood_vddio;
assign OTP_CFG_PGOOD[2] = pgood_vmon1;
assign OTP_CFG_PGOOD[3] = pgood_vmon2;
assign OTP_CFG_PGOOD[4] = pgood_vmon3;
assign OTP_CFG_PGOOD[5] = pgood_vmon4;
assign OTP_CFG_PGOOD[7] = 1'b0;
assign OTP_CFG_PGOOD[6] = pgood_rstb;
assign OTP_CFG_ABIST1[0] = abist1_vcore;
assign OTP_CFG_ABIST1[1] = abist1_vddio;
assign OTP_CFG_ABIST1[2] = abist1_vmon1;
assign OTP_CFG_ABIST1[3] = abist1_vmon2;
assign OTP_CFG_ABIST1[4] = abist1_vmon3;
assign OTP_CFG_ABIST1[7:5] = 3'b0;
assign OTP_CFG_ABIST1[5] = abist1_vmon4;
assign OTP_CFG_ASIL[0] = vmon1_en;
assign OTP_CFG_ASIL[1] = vmon2_en;
assign OTP_CFG_ASIL[2] = vmon3_en;
assign OTP_CFG_ASIL[3] = vmon4_en;
assign OTP_CFG_ASIL[4] = fccu_en;
assign OTP_CFG_ASIL[5] = errmon_en;
assign OTP_CFG_ASIL[6] = wd_selection;
assign OTP_CFG_ASIL[7] = wd_dis;
assign OTP_CFG_I2C[3:0] = fs_i2cdevaddr;
assign OTP_CFG_I2C[7:5] = 3'b0;
assign OTP_CFG_I2C[4] = flt_recovery_en;
assign OTP_CFG_DGLT_DUR_1[0] = vddio_ov_dglt;
assign OTP_CFG_DGLT_DUR_1[2:1] = vddio_uv_dglt;
assign OTP_CFG_DGLT_DUR_1[3] = vcore_ov_dglt;
assign OTP_CFG_DGLT_DUR_1[7:6] = 2'b0;
assign OTP_CFG_DGLT_DUR_1[5:4] = vcore_uv_dglt;
assign OTP_CFG_DGLT_DUR_2[0] = vmonx_ov_dglt;
assign OTP_CFG_DGLT_DUR_2[7:3] = 5'b0;
assign OTP_CFG_DGLT_DUR_2[2:1] = vmonx_uv_dglt;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcore_v <= 8'h0;
    end
    else if(otp_cfg_uvov_1_wr) begin
        vcore_v <= pwdata[7:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoreovth <= 4'h0;
    end
    else if(otp_cfg_uvov_2_wr) begin
        vcoreovth <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddioovth <= 4'h0;
    end
    else if(otp_cfg_uvov_2_wr) begin
        vddioovth <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcore_svs_clamp <= 5'h0;
    end
    else if(otp_cfg_uvov_3_wr) begin
        vcore_svs_clamp <= pwdata[4:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_v <= 1'h0;
    end
    else if(otp_cfg_uvov_3_wr) begin
        vddio_v <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1ovth <= 4'h0;
    end
    else if(otp_cfg_uvov_4_wr) begin
        vmon1ovth <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2ovth <= 4'h0;
    end
    else if(otp_cfg_uvov_4_wr) begin
        vmon2ovth <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3ovth <= 4'h0;
    end
    else if(otp_cfg_uvov_5_wr) begin
        vmon3ovth <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4ovth <= 4'h0;
    end
    else if(otp_cfg_uvov_5_wr) begin
        vmon4ovth <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoreuvth <= 4'h0;
    end
    else if(otp_cfg_uvov_6_wr) begin
        vcoreuvth <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddiouvth <= 4'h0;
    end
    else if(otp_cfg_uvov_6_wr) begin
        vddiouvth <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1uvth <= 4'h0;
    end
    else if(otp_cfg_uvov_7_wr) begin
        vmon1uvth <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2uvth <= 4'h0;
    end
    else if(otp_cfg_uvov_7_wr) begin
        vmon2uvth <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3uvth <= 4'h0;
    end
    else if(otp_cfg_uvov_8_wr) begin
        vmon3uvth <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4uvth <= 4'h0;
    end
    else if(otp_cfg_uvov_8_wr) begin
        vmon4uvth <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_vcore <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_vcore <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_vddio <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_vddio <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_vmon1 <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_vmon1 <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_vmon2 <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_vmon2 <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_vmon3 <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_vmon3 <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_vmon4 <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_vmon4 <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_rstb <= 1'h0;
    end
    else if(otp_cfg_pgood_wr) begin
        pgood_rstb <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        abist1_vcore <= 1'h0;
    end
    else if(otp_cfg_abist1_wr) begin
        abist1_vcore <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        abist1_vddio <= 1'h0;
    end
    else if(otp_cfg_abist1_wr) begin
        abist1_vddio <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        abist1_vmon1 <= 1'h0;
    end
    else if(otp_cfg_abist1_wr) begin
        abist1_vmon1 <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        abist1_vmon2 <= 1'h0;
    end
    else if(otp_cfg_abist1_wr) begin
        abist1_vmon2 <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        abist1_vmon3 <= 1'h0;
    end
    else if(otp_cfg_abist1_wr) begin
        abist1_vmon3 <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        abist1_vmon4 <= 1'h0;
    end
    else if(otp_cfg_abist1_wr) begin
        abist1_vmon4 <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_en <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        vmon1_en <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_en <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        vmon2_en <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_en <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        vmon3_en <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_en <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        vmon4_en <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu_en <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        fccu_en <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        errmon_en <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        errmon_en <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_selection <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        wd_selection <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_dis <= 1'h0;
    end
    else if(otp_cfg_asil_wr) begin
        wd_dis <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fs_i2cdevaddr <= 4'h0;
    end
    else if(otp_cfg_i2c_wr) begin
        fs_i2cdevaddr <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        flt_recovery_en <= 1'h0;
    end
    else if(otp_cfg_i2c_wr) begin
        flt_recovery_en <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_ov_dglt <= 1'h0;
    end
    else if(otp_cfg_dglt_dur_1_wr) begin
        vddio_ov_dglt <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_uv_dglt <= 2'h0;
    end
    else if(otp_cfg_dglt_dur_1_wr) begin
        vddio_uv_dglt <= pwdata[2:1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcore_ov_dglt <= 1'h0;
    end
    else if(otp_cfg_dglt_dur_1_wr) begin
        vcore_ov_dglt <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcore_uv_dglt <= 2'h0;
    end
    else if(otp_cfg_dglt_dur_1_wr) begin
        vcore_uv_dglt <= pwdata[5:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmonx_ov_dglt <= 1'h0;
    end
    else if(otp_cfg_dglt_dur_2_wr) begin
        vmonx_ov_dglt <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmonx_uv_dglt <= 2'h0;
    end
    else if(otp_cfg_dglt_dur_2_wr) begin
        vmonx_uv_dglt <= pwdata[2:1];
    end
end
always@(*) begin
    case(paddr)
        32'h90 + 8'hA : prdata = OTP_CFG_UVOV_1;
        32'h90 + 8'hB : prdata = OTP_CFG_UVOV_2;
        32'h90 + 8'hC : prdata = OTP_CFG_UVOV_3;
        32'h90 + 8'hD : prdata = OTP_CFG_UVOV_4;
        32'h90 + 8'hE : prdata = OTP_CFG_UVOV_5;
        32'h90 + 8'hF : prdata = OTP_CFG_UVOV_6;
        32'h90 + 8'h10 : prdata = OTP_CFG_UVOV_7;
        32'h90 + 8'h11 : prdata = OTP_CFG_UVOV_8;
        32'h90 + 8'h12 : prdata = OTP_CFG_PGOOD;
        32'h90 + 8'h13 : prdata = OTP_CFG_ABIST1;
        32'h90 + 8'h14 : prdata = OTP_CFG_ASIL;
        32'h90 + 8'h15 : prdata = OTP_CFG_I2C;
        32'h90 + 8'h16 : prdata = OTP_CFG_DGLT_DUR_1;
        32'h90 + 8'h17 : prdata = OTP_CFG_DGLT_DUR_2;
        default:prdata = 8'b0;
    endcase
end
endmodule