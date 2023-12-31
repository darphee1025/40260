module register_fs_sys_apb_cfg (
                 clk
                ,rst_n
                ,pwrite
                ,psel
                ,penable
                ,paddr
                ,pwdata
                ,prdata
                ,fs_reg_ovuv_g
                ,fs_io_g
                ,fs_wd_g
                ,fs_com_g
                ,vddio_uv_fs_impact
                ,vddio_ov_fs_impact
                ,vmon4_abist2
                ,vmon3_abist2
                ,vmon2_abist2
                ,vmon1_abist2
                ,vddio_abist2
                ,vcoremon_abist2
                ,vcoremon_uv_fs_impact
                ,vcoremon_ov_fs_impact
                ,vmon1_uv_fs_impact
                ,vmon1_ov_fs_impact
                ,vmon2_uv_fs_impact
                ,vmon2_ov_fs_impact
                ,vmon3_uv_fs_impact
                ,vmon3_ov_fs_impact
                ,vmon4_uv_fs_impact
                ,vmon4_ov_fs_impact
                ,wd_err_cnt
                ,wd_rfr_cnt
                ,wd_fs_impact
                ,wd_rfr_limit
                ,wd_err_limit
                ,errmon_fs_impact
                ,errmon_ack_time
                ,errmon_flt_pol
                ,fccu2_fs_impact
                ,fccu1_fs_impact
                ,fccu12_fs_impact
                ,fccu2_flt_pol
                ,fccu1_flt_pol
                ,fccu12_flt_pol
                ,fccu_cfg
                ,flt_err_cnt
                ,dis_8s
                ,clk_mon_dis
                ,fs0b_sc_high_cfg
                ,rstb_dur
                ,flt_err_impact
                ,flt_err_cnt_limit
                ,svs_offset
                ,wdw_recovery
                ,wdw_dc
                ,wdw_period
                ,wd_seed
                ,wd_answer
                ,fs_osc_drift
                ,fs_dig_ref_ov
                ,vmon1_uv
                ,vmon1_ov
                ,vmon2_uv
                ,vmon2_ov
                ,vmon3_uv
                ,vmon3_ov
                ,vmon4_uv
                ,vmon4_ov
                ,vddio_uv
                ,vddio_ov
                ,vcoremon_uv
                ,vcoremon_ov
                ,release_fs0b
                ,fccu1_rt
                ,fccu2_rt
                ,gpio_initfs
                ,fs0b_req
                ,fs0b_diag
                ,fs0b_sns
                ,fs0b_drv
                ,rstb_req
                ,rstb_diag
                ,rstb_event
                ,rstb_sns
                ,rstb_drv
                ,ext_rstb
                ,pgood_sns
                ,pgood_event
                ,pgood_diag
                ,lbist_ok
                ,i2c_fs_req
                ,i2c_fs_crc
                ,spi_fs_crc
                ,spi_fs_req
                ,spi_fs_clk
                ,abist2_ok
                ,abist1_ok
                ,bad_wd_timing
                ,bad_wd_data
                ,errmon_status
                ,errmon
                ,errmon_ack
                ,fccu2
                ,fccu1
                ,fccu12
                ,int_inh_fccu1
                ,int_inh_fccu2
                ,int_inh_errmon
                ,int_inh_bad_wd_refresh
                ,int_inh_vcoremon_ov_uv
                ,int_inh_vddio_ov_uv
                ,int_inh_vmon1_ov_uv
                ,int_inh_vmon2_ov_uv
                ,int_inh_vmon3_ov_uv
                ,int_inh_vmon4_ov_uv
                ,fsm_state
                ,reg_corrupt
                ,otp_corrupt
                ,dbg_mode
                ,dbg_exit
                );
input           clk;
input           rst_n;
input           pwrite;
input           psel;
input           penable;
input  [31:0]   paddr;
input  [15:0]   pwdata;
output [15:0]   prdata;
input           fs_reg_ovuv_g;
input           fs_io_g;
input           fs_wd_g;
input           fs_com_g;
output [1:0]    vddio_uv_fs_impact;
output [1:0]    vddio_ov_fs_impact;
output          vmon4_abist2;
output          vmon3_abist2;
output          vmon2_abist2;
output          vmon1_abist2;
output          vddio_abist2;
output          vcoremon_abist2;
output [1:0]    vcoremon_uv_fs_impact;
output [1:0]    vcoremon_ov_fs_impact;
output [1:0]    vmon1_uv_fs_impact;
output [1:0]    vmon1_ov_fs_impact;
output [1:0]    vmon2_uv_fs_impact;
output [1:0]    vmon2_ov_fs_impact;
output [1:0]    vmon3_uv_fs_impact;
output [1:0]    vmon3_ov_fs_impact;
output [1:0]    vmon4_uv_fs_impact;
output [1:0]    vmon4_ov_fs_impact;
input  [3:0]    wd_err_cnt;
output [2:0]    wd_rfr_cnt;
output [1:0]    wd_fs_impact;
output [1:0]    wd_rfr_limit;
output [1:0]    wd_err_limit;
output          errmon_fs_impact;
output [1:0]    errmon_ack_time;
output          errmon_flt_pol;
output          fccu2_fs_impact;
output          fccu1_fs_impact;
output          fccu12_fs_impact;
output          fccu2_flt_pol;
output          fccu1_flt_pol;
output          fccu12_flt_pol;
output [1:0]    fccu_cfg;
input  [3:0]    flt_err_cnt;
output          dis_8s;
output          clk_mon_dis;
output          fs0b_sc_high_cfg;
output          rstb_dur;
output [1:0]    flt_err_impact;
output [1:0]    flt_err_cnt_limit;
output [4:0]    svs_offset;
output [3:0]    wdw_recovery;
output [2:0]    wdw_dc;
output [4:0]    wdw_period;
output [15:0]   wd_seed;
output [15:0]   wd_answer;
output          fs_osc_drift;
output          fs_dig_ref_ov;
output          vmon1_uv;
output          vmon1_ov;
output          vmon2_uv;
output          vmon2_ov;
output          vmon3_uv;
output          vmon3_ov;
output          vmon4_uv;
output          vmon4_ov;
output          vddio_uv;
output          vddio_ov;
output          vcoremon_uv;
output          vcoremon_ov;
output [15:0]   release_fs0b;
input           fccu1_rt;
input           fccu2_rt;
output          gpio_initfs;
output          fs0b_req;
output          fs0b_diag;
input           fs0b_sns;
input           fs0b_drv;
output          rstb_req;
output          rstb_diag;
output          rstb_event;
input           rstb_sns;
input           rstb_drv;
output          ext_rstb;
input           pgood_sns;
output          pgood_event;
output          pgood_diag;
input           lbist_ok;
output          i2c_fs_req;
output          i2c_fs_crc;
output          spi_fs_crc;
output          spi_fs_req;
output          spi_fs_clk;
input           abist2_ok;
input           abist1_ok;
output          bad_wd_timing;
output          bad_wd_data;
input           errmon_status;
output          errmon;
output          errmon_ack;
output          fccu2;
output          fccu1;
output          fccu12;
output          int_inh_fccu1;
output          int_inh_fccu2;
output          int_inh_errmon;
output          int_inh_bad_wd_refresh;
output          int_inh_vcoremon_ov_uv;
output          int_inh_vddio_ov_uv;
output          int_inh_vmon1_ov_uv;
output          int_inh_vmon2_ov_uv;
output          int_inh_vmon3_ov_uv;
output          int_inh_vmon4_ov_uv;
input  [4:0]    fsm_state;
output          reg_corrupt;
output          otp_corrupt;
input           dbg_mode;
output          dbg_exit;
wire            clk;
wire            rst_n;
wire            pwrite;
wire            psel;
wire            penable;
wire [31:0]     paddr;
wire [15:0]     pwdata;
reg  [15:0]     prdata;
wire            fs_reg_ovuv_g;
wire            fs_io_g;
wire            fs_wd_g;
wire            fs_com_g;
reg  [1:0]      vddio_uv_fs_impact;
reg  [1:0]      vddio_ov_fs_impact;
reg             vmon4_abist2;
reg             vmon3_abist2;
reg             vmon2_abist2;
reg             vmon1_abist2;
reg             vddio_abist2;
reg             vcoremon_abist2;
reg  [1:0]      vcoremon_uv_fs_impact;
reg  [1:0]      vcoremon_ov_fs_impact;
reg  [1:0]      vmon1_uv_fs_impact;
reg  [1:0]      vmon1_ov_fs_impact;
reg  [1:0]      vmon2_uv_fs_impact;
reg  [1:0]      vmon2_ov_fs_impact;
reg  [1:0]      vmon3_uv_fs_impact;
reg  [1:0]      vmon3_ov_fs_impact;
reg  [1:0]      vmon4_uv_fs_impact;
reg  [1:0]      vmon4_ov_fs_impact;
wire [3:0]      wd_err_cnt;
reg  [2:0]      wd_rfr_cnt;
reg  [1:0]      wd_fs_impact;
reg  [1:0]      wd_rfr_limit;
reg  [1:0]      wd_err_limit;
reg             errmon_fs_impact;
reg  [1:0]      errmon_ack_time;
reg             errmon_flt_pol;
reg             fccu2_fs_impact;
reg             fccu1_fs_impact;
reg             fccu12_fs_impact;
reg             fccu2_flt_pol;
reg             fccu1_flt_pol;
reg             fccu12_flt_pol;
reg  [1:0]      fccu_cfg;
wire [3:0]      flt_err_cnt;
reg             dis_8s;
reg             clk_mon_dis;
reg             fs0b_sc_high_cfg;
reg             rstb_dur;
reg  [1:0]      flt_err_impact;
reg  [1:0]      flt_err_cnt_limit;
reg  [4:0]      svs_offset;
reg  [3:0]      wdw_recovery;
reg  [2:0]      wdw_dc;
reg  [4:0]      wdw_period;
reg  [15:0]     wd_seed;
reg  [15:0]     wd_answer;
reg             fs_osc_drift;
reg             fs_dig_ref_ov;
reg             vmon1_uv;
reg             vmon1_ov;
reg             vmon2_uv;
reg             vmon2_ov;
reg             vmon3_uv;
reg             vmon3_ov;
reg             vmon4_uv;
reg             vmon4_ov;
reg             vddio_uv;
reg             vddio_ov;
reg             vcoremon_uv;
reg             vcoremon_ov;
reg  [15:0]     release_fs0b;
wire            fccu1_rt;
wire            fccu2_rt;
reg             gpio_initfs;
reg             fs0b_req;
reg             fs0b_diag;
wire            fs0b_sns;
wire            fs0b_drv;
reg             rstb_req;
reg             rstb_diag;
reg             rstb_event;
wire            rstb_sns;
wire            rstb_drv;
reg             ext_rstb;
wire            pgood_sns;
reg             pgood_event;
reg             pgood_diag;
wire            lbist_ok;
reg             i2c_fs_req;
reg             i2c_fs_crc;
reg             spi_fs_crc;
reg             spi_fs_req;
reg             spi_fs_clk;
wire            abist2_ok;
wire            abist1_ok;
reg             bad_wd_timing;
reg             bad_wd_data;
wire            errmon_status;
reg             errmon;
reg             errmon_ack;
reg             fccu2;
reg             fccu1;
reg             fccu12;
reg             int_inh_fccu1;
reg             int_inh_fccu2;
reg             int_inh_errmon;
reg             int_inh_bad_wd_refresh;
reg             int_inh_vcoremon_ov_uv;
reg             int_inh_vddio_ov_uv;
reg             int_inh_vmon1_ov_uv;
reg             int_inh_vmon2_ov_uv;
reg             int_inh_vmon3_ov_uv;
reg             int_inh_vmon4_ov_uv;
wire [4:0]      fsm_state;
reg             reg_corrupt;
reg             otp_corrupt;
wire            dbg_mode;
reg             dbg_exit;
wire [15:0]     FS_GRL_FLAGS_REGISTER;
wire [15:0]     FS_I_OVUV_SAFE_REACTION1;
wire [15:0]     FS_I_OVUV_SAFE_REACTION2;
wire [15:0]     FS_I_WD_CFG;
wire [15:0]     FS_I_SAFE_INPUTS;
wire [15:0]     FS_I_FSSM;
wire [15:0]     FS_I_SVS;
wire [15:0]     FS_WD_WINDOW;
wire [15:0]     FS_WD_SEED;
wire [15:0]     FS_WD_ANSWER;
wire [15:0]     FS_OVUVREG_STATUS;
wire [15:0]     FS_RELEASE_FS0B;
wire [15:0]     FS_SAFE_IOS;
wire [15:0]     FS_DIAG_SAFETY;
wire [15:0]     FS_INTB_MASK;
wire [15:0]     FS_STATES;
wire            fs_grl_flags_register_wr;
wire            fs_grl_flags_register_rd;
wire            fs_i_ovuv_safe_reaction1_wr;
wire            fs_i_ovuv_safe_reaction1_rd;
wire            fs_i_ovuv_safe_reaction2_wr;
wire            fs_i_ovuv_safe_reaction2_rd;
wire            fs_i_wd_cfg_wr;
wire            fs_i_wd_cfg_rd;
wire            fs_i_safe_inputs_wr;
wire            fs_i_safe_inputs_rd;
wire            fs_i_fssm_wr;
wire            fs_i_fssm_rd;
wire            fs_i_svs_wr;
wire            fs_i_svs_rd;
wire            fs_wd_window_wr;
wire            fs_wd_window_rd;
wire            fs_wd_seed_wr;
wire            fs_wd_seed_rd;
wire            fs_wd_answer_wr;
wire            fs_wd_answer_rd;
wire            fs_ovuvreg_status_wr;
wire            fs_ovuvreg_status_rd;
wire            fs_release_fs0b_wr;
wire            fs_release_fs0b_rd;
wire            fs_safe_ios_wr;
wire            fs_safe_ios_rd;
wire            fs_diag_safety_wr;
wire            fs_diag_safety_rd;
wire            fs_intb_mask_wr;
wire            fs_intb_mask_rd;
wire            fs_states_wr;
wire            fs_states_rd;
wire            reg_wr;
wire            reg_rd;
assign reg_wr = psel & pwrite & penable;
assign reg_rd = psel & (~pwrite) & (~penable);
assign fs_grl_flags_register_wr = (paddr == 32'h0 + 8'h40) & reg_wr;
assign fs_grl_flags_register_rd = (paddr == 32'h0 + 8'h40) & reg_rd;
assign fs_i_ovuv_safe_reaction1_wr = (paddr == 32'h0 + 8'h41) & reg_wr;
assign fs_i_ovuv_safe_reaction1_rd = (paddr == 32'h0 + 8'h41) & reg_rd;
assign fs_i_ovuv_safe_reaction2_wr = (paddr == 32'h0 + 8'h43) & reg_wr;
assign fs_i_ovuv_safe_reaction2_rd = (paddr == 32'h0 + 8'h43) & reg_rd;
assign fs_i_wd_cfg_wr = (paddr == 32'h0 + 8'h45) & reg_wr;
assign fs_i_wd_cfg_rd = (paddr == 32'h0 + 8'h45) & reg_rd;
assign fs_i_safe_inputs_wr = (paddr == 32'h0 + 8'h47) & reg_wr;
assign fs_i_safe_inputs_rd = (paddr == 32'h0 + 8'h47) & reg_rd;
assign fs_i_fssm_wr = (paddr == 32'h0 + 8'h49) & reg_wr;
assign fs_i_fssm_rd = (paddr == 32'h0 + 8'h49) & reg_rd;
assign fs_i_svs_wr = (paddr == 32'h0 + 8'h4B) & reg_wr;
assign fs_i_svs_rd = (paddr == 32'h0 + 8'h4B) & reg_rd;
assign fs_wd_window_wr = (paddr == 32'h0 + 8'h4D) & reg_wr;
assign fs_wd_window_rd = (paddr == 32'h0 + 8'h4D) & reg_rd;
assign fs_wd_seed_wr = (paddr == 32'h0 + 8'h4F) & reg_wr;
assign fs_wd_seed_rd = (paddr == 32'h0 + 8'h4F) & reg_rd;
assign fs_wd_answer_wr = (paddr == 32'h0 + 8'h50) & reg_wr;
assign fs_wd_answer_rd = (paddr == 32'h0 + 8'h50) & reg_rd;
assign fs_ovuvreg_status_wr = (paddr == 32'h0 + 8'h51) & reg_wr;
assign fs_ovuvreg_status_rd = (paddr == 32'h0 + 8'h51) & reg_rd;
assign fs_release_fs0b_wr = (paddr == 32'h0 + 8'h52) & reg_wr;
assign fs_release_fs0b_rd = (paddr == 32'h0 + 8'h52) & reg_rd;
assign fs_safe_ios_wr = (paddr == 32'h0 + 8'h53) & reg_wr;
assign fs_safe_ios_rd = (paddr == 32'h0 + 8'h53) & reg_rd;
assign fs_diag_safety_wr = (paddr == 32'h0 + 8'h54) & reg_wr;
assign fs_diag_safety_rd = (paddr == 32'h0 + 8'h54) & reg_rd;
assign fs_intb_mask_wr = (paddr == 32'h0 + 8'h55) & reg_wr;
assign fs_intb_mask_rd = (paddr == 32'h0 + 8'h55) & reg_rd;
assign fs_states_wr = (paddr == 32'h0 + 8'h56) & reg_wr;
assign fs_states_rd = (paddr == 32'h0 + 8'h56) & reg_rd;
assign FS_GRL_FLAGS_REGISTER[11:0] = 12'b0;
assign FS_GRL_FLAGS_REGISTER[12] = fs_reg_ovuv_g;
assign FS_GRL_FLAGS_REGISTER[13] = fs_io_g;
assign FS_GRL_FLAGS_REGISTER[14] = fs_wd_g;
assign FS_GRL_FLAGS_REGISTER[15] = fs_com_g;
assign FS_I_OVUV_SAFE_REACTION1[1:0] = vddio_uv_fs_impact;
assign FS_I_OVUV_SAFE_REACTION1[3:2] = vddio_ov_fs_impact;
assign FS_I_OVUV_SAFE_REACTION1[4] = 1'b0;
assign FS_I_OVUV_SAFE_REACTION1[5] = vmon4_abist2;
assign FS_I_OVUV_SAFE_REACTION1[6] = vmon3_abist2;
assign FS_I_OVUV_SAFE_REACTION1[7] = vmon2_abist2;
assign FS_I_OVUV_SAFE_REACTION1[8] = vmon1_abist2;
assign FS_I_OVUV_SAFE_REACTION1[9] = vddio_abist2;
assign FS_I_OVUV_SAFE_REACTION1[10] = vcoremon_abist2;
assign FS_I_OVUV_SAFE_REACTION1[11] = 1'b0;
assign FS_I_OVUV_SAFE_REACTION1[13:12] = vcoremon_uv_fs_impact;
assign FS_I_OVUV_SAFE_REACTION1[15:14] = vcoremon_ov_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[1:0] = vmon1_uv_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[3:2] = vmon1_ov_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[5:4] = vmon2_uv_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[7:6] = vmon2_ov_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[9:8] = vmon3_uv_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[11:10] = vmon3_ov_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[13:12] = vmon4_uv_fs_impact;
assign FS_I_OVUV_SAFE_REACTION2[15:14] = vmon4_ov_fs_impact;
assign FS_I_WD_CFG[3:0] = wd_err_cnt;
assign FS_I_WD_CFG[6:4] = wd_rfr_cnt;
assign FS_I_WD_CFG[7] = 1'b0;
assign FS_I_WD_CFG[9:8] = wd_fs_impact;
assign FS_I_WD_CFG[11:10] = wd_rfr_limit;
assign FS_I_WD_CFG[13:12] = 2'b0;
assign FS_I_WD_CFG[15:14] = wd_err_limit;
assign FS_I_SAFE_INPUTS[0] = 1'b0;
assign FS_I_SAFE_INPUTS[1] = errmon_fs_impact;
assign FS_I_SAFE_INPUTS[3:2] = errmon_ack_time;
assign FS_I_SAFE_INPUTS[4] = errmon_flt_pol;
assign FS_I_SAFE_INPUTS[5] = 1'b0;
assign FS_I_SAFE_INPUTS[6] = fccu2_fs_impact;
assign FS_I_SAFE_INPUTS[7] = fccu1_fs_impact;
assign FS_I_SAFE_INPUTS[8] = fccu12_fs_impact;
assign FS_I_SAFE_INPUTS[9] = 1'b0;
assign FS_I_SAFE_INPUTS[10] = fccu2_flt_pol;
assign FS_I_SAFE_INPUTS[11] = fccu1_flt_pol;
assign FS_I_SAFE_INPUTS[12] = fccu12_flt_pol;
assign FS_I_SAFE_INPUTS[13] = 1'b0;
assign FS_I_SAFE_INPUTS[15:14] = fccu_cfg;
assign FS_I_FSSM[3:0] = flt_err_cnt;
assign FS_I_FSSM[4] = dis_8s;
assign FS_I_FSSM[5] = clk_mon_dis;
assign FS_I_FSSM[6] = 1'b0;
assign FS_I_FSSM[7] = fs0b_sc_high_cfg;
assign FS_I_FSSM[8] = 1'b0;
assign FS_I_FSSM[9] = rstb_dur;
assign FS_I_FSSM[10] = 1'b0;
assign FS_I_FSSM[12:11] = flt_err_impact;
assign FS_I_FSSM[13] = 1'b0;
assign FS_I_FSSM[15:14] = flt_err_cnt_limit;
assign FS_I_SVS[10:0] = 11'b0;
assign FS_I_SVS[15:11] = svs_offset;
assign FS_WD_WINDOW[3:0] = wdw_recovery;
assign FS_WD_WINDOW[7:4] = 4'b0;
assign FS_WD_WINDOW[10:8] = wdw_dc;
assign FS_WD_WINDOW[15:11] = wdw_period;
assign FS_WD_SEED[15:0] = wd_seed;
assign FS_WD_ANSWER[15:0] = wd_answer;
assign FS_OVUVREG_STATUS[0] = 1'b0;
assign FS_OVUVREG_STATUS[1] = fs_osc_drift;
assign FS_OVUVREG_STATUS[2] = fs_dig_ref_ov;
assign FS_OVUVREG_STATUS[3] = 1'b0;
assign FS_OVUVREG_STATUS[4] = vmon1_uv;
assign FS_OVUVREG_STATUS[5] = vmon1_ov;
assign FS_OVUVREG_STATUS[6] = vmon2_uv;
assign FS_OVUVREG_STATUS[7] = vmon2_ov;
assign FS_OVUVREG_STATUS[8] = vmon3_uv;
assign FS_OVUVREG_STATUS[9] = vmon3_ov;
assign FS_OVUVREG_STATUS[10] = vmon4_uv;
assign FS_OVUVREG_STATUS[11] = vmon4_ov;
assign FS_OVUVREG_STATUS[12] = vddio_uv;
assign FS_OVUVREG_STATUS[13] = vddio_ov;
assign FS_OVUVREG_STATUS[14] = vcoremon_uv;
assign FS_OVUVREG_STATUS[15] = vcoremon_ov;
assign FS_RELEASE_FS0B[15:0] = 16'b0;
assign FS_SAFE_IOS[0] = fccu1_rt;
assign FS_SAFE_IOS[1] = fccu2_rt;
assign FS_SAFE_IOS[2] = 1'b0;
assign FS_SAFE_IOS[3] = 1'b0;
assign FS_SAFE_IOS[4] = fs0b_diag;
assign FS_SAFE_IOS[5] = fs0b_sns;
assign FS_SAFE_IOS[6] = fs0b_drv;
assign FS_SAFE_IOS[7] = 1'b0;
assign FS_SAFE_IOS[8] = rstb_diag;
assign FS_SAFE_IOS[9] = rstb_event;
assign FS_SAFE_IOS[10] = rstb_sns;
assign FS_SAFE_IOS[11] = rstb_drv;
assign FS_SAFE_IOS[12] = ext_rstb;
assign FS_SAFE_IOS[13] = pgood_sns;
assign FS_SAFE_IOS[14] = pgood_event;
assign FS_SAFE_IOS[15] = pgood_diag;
assign FS_DIAG_SAFETY[0] = lbist_ok;
assign FS_DIAG_SAFETY[1] = i2c_fs_req;
assign FS_DIAG_SAFETY[2] = i2c_fs_crc;
assign FS_DIAG_SAFETY[3] = spi_fs_crc;
assign FS_DIAG_SAFETY[4] = spi_fs_req;
assign FS_DIAG_SAFETY[5] = spi_fs_clk;
assign FS_DIAG_SAFETY[6] = abist2_ok;
assign FS_DIAG_SAFETY[7] = abist1_ok;
assign FS_DIAG_SAFETY[8] = bad_wd_timing;
assign FS_DIAG_SAFETY[9] = bad_wd_data;
assign FS_DIAG_SAFETY[10] = errmon_status;
assign FS_DIAG_SAFETY[11] = errmon;
assign FS_DIAG_SAFETY[12] = 1'b0;
assign FS_DIAG_SAFETY[13] = fccu2;
assign FS_DIAG_SAFETY[14] = fccu1;
assign FS_DIAG_SAFETY[15] = fccu12;
assign FS_INTB_MASK[0] = int_inh_fccu1;
assign FS_INTB_MASK[1] = int_inh_fccu2;
assign FS_INTB_MASK[2] = int_inh_errmon;
assign FS_INTB_MASK[3] = int_inh_bad_wd_refresh;
assign FS_INTB_MASK[4] = int_inh_vcoremon_ov_uv;
assign FS_INTB_MASK[5] = int_inh_vddio_ov_uv;
assign FS_INTB_MASK[6] = int_inh_vmon1_ov_uv;
assign FS_INTB_MASK[7] = int_inh_vmon2_ov_uv;
assign FS_INTB_MASK[8] = int_inh_vmon3_ov_uv;
assign FS_INTB_MASK[9] = int_inh_vmon4_ov_uv;
assign FS_INTB_MASK[15:10] = 6'b0;
assign FS_STATES[4:0] = fsm_state;
assign FS_STATES[8:5] = 4'b0;
assign FS_STATES[9] = reg_corrupt;
assign FS_STATES[10] = 1'b0;
assign FS_STATES[11] = otp_corrupt;
assign FS_STATES[12] = 1'b0;
assign FS_STATES[13] = dbg_mode;
assign FS_STATES[14] = 1'b0;
assign FS_STATES[15] = 1'b0;
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_uv_fs_impact <= 2'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vddio_uv_fs_impact <= pwdata[1:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_ov_fs_impact <= 2'h3;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vddio_ov_fs_impact <= pwdata[3:2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_abist2 <= 1'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vmon4_abist2 <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_abist2 <= 1'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vmon3_abist2 <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_abist2 <= 1'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vmon2_abist2 <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_abist2 <= 1'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vmon1_abist2 <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_abist2 <= 1'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vddio_abist2 <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoremon_abist2 <= 1'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vcoremon_abist2 <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoremon_uv_fs_impact <= 2'b0;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vcoremon_uv_fs_impact <= pwdata[13:12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoremon_ov_fs_impact <= 2'h3;
    end
    else if(fs_i_ovuv_safe_reaction1_wr) begin
        vcoremon_ov_fs_impact <= pwdata[15:14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_uv_fs_impact <= 2'h1;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon1_uv_fs_impact <= pwdata[1:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_ov_fs_impact <= 2'h3;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon1_ov_fs_impact <= pwdata[3:2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_uv_fs_impact <= 2'b1;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon2_uv_fs_impact <= pwdata[5:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_ov_fs_impact <= 2'h3;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon2_ov_fs_impact <= pwdata[7:6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_uv_fs_impact <= 2'h1;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon3_uv_fs_impact <= pwdata[9:8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_ov_fs_impact <= 2'h3;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon3_ov_fs_impact <= pwdata[11:10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_uv_fs_impact <= 2'h1;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon4_uv_fs_impact <= pwdata[13:12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_ov_fs_impact <= 2'h3;
    end
    else if(fs_i_ovuv_safe_reaction2_wr) begin
        vmon4_ov_fs_impact <= pwdata[15:14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_rfr_cnt <= 3'h0;
    end
    else if(fs_i_wd_cfg_wr) begin
        wd_rfr_cnt <= pwdata[6:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_fs_impact <= 2'h2;
    end
    else if(fs_i_wd_cfg_wr) begin
        wd_fs_impact <= pwdata[9:8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_rfr_limit <= 2'h0;
    end
    else if(fs_i_wd_cfg_wr) begin
        wd_rfr_limit <= pwdata[11:10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_err_limit <= 2'h1;
    end
    else if(fs_i_wd_cfg_wr) begin
        wd_err_limit <= pwdata[15:14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        errmon_fs_impact <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        errmon_fs_impact <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        errmon_ack_time <= 2'h1;
    end
    else if(fs_i_safe_inputs_wr) begin
        errmon_ack_time <= pwdata[3:2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        errmon_flt_pol <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        errmon_flt_pol <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu2_fs_impact <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu2_fs_impact <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu1_fs_impact <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu1_fs_impact <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu12_fs_impact <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu12_fs_impact <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu2_flt_pol <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu2_flt_pol <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu1_flt_pol <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu1_flt_pol <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu12_flt_pol <= 1'b0;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu12_flt_pol <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu_cfg <= 2'h1;
    end
    else if(fs_i_safe_inputs_wr) begin
        fccu_cfg <= pwdata[15:14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dis_8s <= 1'b0;
    end
    else if(fs_i_fssm_wr) begin
        dis_8s <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        clk_mon_dis <= 1'b0;
    end
    else if(fs_i_fssm_wr) begin
        clk_mon_dis <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fs0b_sc_high_cfg <= 1'b0;
    end
    else if(fs_i_fssm_wr) begin
        fs0b_sc_high_cfg <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rstb_dur <= 1'b0;
    end
    else if(fs_i_fssm_wr) begin
        rstb_dur <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        flt_err_impact <= 2'h2;
    end
    else if(fs_i_fssm_wr) begin
        flt_err_impact <= pwdata[12:11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        flt_err_cnt_limit <= 2'h1;
    end
    else if(fs_i_fssm_wr) begin
        flt_err_cnt_limit <= pwdata[15:14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        svs_offset <= 5'h0;
    end
    else if(fs_i_svs_wr) begin
        svs_offset <= pwdata[15:11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wdw_recovery <= 4'b1011;
    end
    else if(fs_wd_window_wr) begin
        wdw_recovery <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wdw_dc <= 3'h2;
    end
    else if(fs_wd_window_wr) begin
        wdw_dc <= pwdata[10:8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wdw_period <= 5'h3;
    end
    else if(fs_wd_window_wr) begin
        wdw_period <= pwdata[15:11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_seed <= 16'b0101101010110010;
    end
    else if(fs_wd_seed_wr) begin
        wd_seed <= pwdata[15:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wd_answer <= 16'b0;
    end
    else if(fs_wd_answer_wr) begin
        wd_answer <= pwdata[15:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fs_osc_drift <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        fs_osc_drift <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fs_dig_ref_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        fs_dig_ref_ov <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_uv <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon1_uv <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon1_ov <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_uv <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon2_uv <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon2_ov <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_uv <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon3_uv <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon3_ov <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_uv <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon4_uv <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vmon4_ov <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_uv <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vddio_uv <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vddio_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vddio_ov <= pwdata[13];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoremon_uv <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vcoremon_uv <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vcoremon_ov <= 1'b0;
    end
    else if(fs_ovuvreg_status_wr) begin
        vcoremon_ov <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        release_fs0b <= 16'b0;
    end
    else if(fs_release_fs0b_wr) begin
        release_fs0b <= pwdata[15:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        gpio_initfs <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        gpio_initfs <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fs0b_req <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        fs0b_req <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fs0b_diag <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        fs0b_diag <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rstb_req <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        rstb_req <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rstb_diag <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        rstb_diag <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        rstb_event <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        rstb_event <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ext_rstb <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        ext_rstb <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_event <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        pgood_event <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        pgood_diag <= 1'b0;
    end
    else if(fs_safe_ios_wr) begin
        pgood_diag <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        i2c_fs_req <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        i2c_fs_req <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        i2c_fs_crc <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        i2c_fs_crc <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        spi_fs_crc <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        spi_fs_crc <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        spi_fs_req <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        spi_fs_req <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        spi_fs_clk <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        spi_fs_clk <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        bad_wd_timing <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        bad_wd_timing <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        bad_wd_data <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        bad_wd_data <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        errmon <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        errmon <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        errmon_ack <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        errmon_ack <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu2 <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        fccu2 <= pwdata[13];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu1 <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        fccu1 <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fccu12 <= 1'b0;
    end
    else if(fs_diag_safety_wr) begin
        fccu12 <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_fccu1 <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_fccu1 <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_fccu2 <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_fccu2 <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_errmon <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_errmon <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_bad_wd_refresh <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_bad_wd_refresh <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_vcoremon_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vcoremon_ov_uv <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_vddio_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vddio_ov_uv <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_vmon1_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vmon1_ov_uv <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_vmon2_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vmon2_ov_uv <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_vmon3_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vmon3_ov_uv <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        int_inh_vmon4_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vmon4_ov_uv <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        reg_corrupt <= 1'b0;
    end
    else if(fs_states_wr) begin
        reg_corrupt <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        otp_corrupt <= 1'b0;
    end
    else if(fs_states_wr) begin
        otp_corrupt <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        dbg_exit <= 1'b0;
    end
    else if(fs_states_wr) begin
        dbg_exit <= pwdata[14];
    end
end
always@(*) begin
    case(paddr)
        32'h0 + 8'h40 : prdata = FS_GRL_FLAGS_REGISTER;
        32'h0 + 8'h41 : prdata = FS_I_OVUV_SAFE_REACTION1;
        32'h0 + 8'h43 : prdata = FS_I_OVUV_SAFE_REACTION2;
        32'h0 + 8'h45 : prdata = FS_I_WD_CFG;
        32'h0 + 8'h47 : prdata = FS_I_SAFE_INPUTS;
        32'h0 + 8'h49 : prdata = FS_I_FSSM ;
        32'h0 + 8'h4B : prdata = FS_I_SVS  ;
        32'h0 + 8'h4D : prdata = FS_WD_WINDOW;
        32'h0 + 8'h4F : prdata = FS_WD_SEED;
        32'h0 + 8'h50 : prdata = FS_WD_ANSWER;
        32'h0 + 8'h51 : prdata = FS_OVUVREG_STATUS;
        32'h0 + 8'h52 : prdata = FS_RELEASE_FS0B;
        32'h0 + 8'h53 : prdata = FS_SAFE_IOS;
        32'h0 + 8'h54 : prdata = FS_DIAG_SAFETY;
        32'h0 + 8'h55 : prdata = FS_INTB_MASK;
        32'h0 + 8'h56 : prdata = FS_STATES ;
        default:prdata = 16'b0;
    endcase
end
endmodule