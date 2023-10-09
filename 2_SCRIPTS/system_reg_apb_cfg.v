module system_reg_apb_cfg (
                 clk
                ,rst_n
                ,pwrite
                ,psel
                ,penable
                ,paddr
                ,pwdata
                ,prdata
                ,i2c_m_req
                ,i2c_m_crc
                ,spi_m_crc
                ,spi_m_req
                ,spi_m_clk
                ,vldo2_g
                ,vldo1_g
                ,vbuck3_g
                ,vbuck2_g
                ,vbuck1_g
                ,vpoost_g
                ,vpre_g
                ,wu_g
                ,com_err
                ,goto_stby
                ,w1dis
                ,w2dis
                ,main_normal
                ,ext_fin_dis
                ,ext_fin_sel_rt
                ,pll_lock_rt
                ,ldo2en
                ,ldo1en
                ,buck3en
                ,buck2en
                ,buck1en
                ,boosten
                ,vpen
                ,ldo2dis
                ,ldo1dis
                ,buck3dis
                ,buck2dis
                ,buck1dis
                ,boostdis
                ,vpdis
                ,vref_pd_dis
                ,vpresrhs
                ,vpresrls
                ,ldo2tsdcfg
                ,ldo1tsdcfg
                ,buck3tsdcfg
                ,buck2tsdcfg
                ,buck1tsdcfg
                ,boosttsdcfg
                ,vbstsr
                ,amux
                ,ratio
                ,clk_tune
                ,mod_en
                ,fin_div
                ,ext_fin_sel
                ,fout_clk_sel
                ,fout_phase
                ,fout_mux_sel
                ,mod_cfg
                ,ldo2tsd_m
                ,ldo1tsd_m
                ,buck3tsd_m
                ,buck2tsd_m
                ,buck1tsd_m
                ,boosttsd_m
                ,ldo2oc_m
                ,ldo1oc_m
                ,buck3oc_m
                ,buck2oc_m
                ,buck1oc_m
                ,vpreoc_m
                ,wake2_m
                ,wake1_m
                ,vsupuvh
                ,vsupuv
                ,vpreuvh
                ,vsupuv7
                ,vboost_uvh_m
                ,vpre_fb_ov_m
                ,com_m
                ,vbosuvh_m
                ,vboostov_m
                ,ldo2ot
                ,ldo1ot
                ,buck3ot
                ,buck2ot
                ,buck1ot
                ,vboostot
                ,vboostov
                ,clk_fin_div_ok
                ,ldo2oc
                ,ldo1oc
                ,buck3oc
                ,buck2oc
                ,buck1oc
                ,vpreoc
                ,vboostuvh
                ,vbosuvh
                ,wk1flg
                ,wk2flg
                ,wk1rt
                ,wk2rt
                ,vsupuvh
                ,vsupuvl
                ,vpreuvh
                ,vpreuvl
                ,ldo2_st
                ,ldo1_st
                ,buck3_st
                ,buck2_st
                ,buck1_st
                ,boost_st
                ,vsupuv7
                ,vpre_fb_ov
                ,vmon1_reg
                ,vmon2_reg
                ,vmon3_reg
                ,vmon4_reg
                ,lvb1_svs
                ,memory0
                ,memory1
                ,deviceid
                ,mmrev
                ,fmrev
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
                ,wd_ seed
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
                ,int_inh_vmon4_ov_uv
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
output          i2c_m_req;
output          i2c_m_crc;
output          spi_m_crc;
output          spi_m_req;
output          spi_m_clk;
input           vldo2_g;
input           vldo1_g;
input           vbuck3_g;
input           vbuck2_g;
input           vbuck1_g;
input           vpoost_g;
input           vpre_g;
input           wu_g;
input           com_err;
output          goto_stby;
output          w1dis;
output          w2dis;
input           main_normal;
output          ext_fin_dis;
input           ext_fin_sel_rt;
input           pll_lock_rt;
output          ldo2en;
output          ldo1en;
output          buck3en;
output          buck2en;
output          buck1en;
output          boosten;
output          vpen;
output          ldo2dis;
output          ldo1dis;
output          buck3dis;
output          buck2dis;
output          buck1dis;
output          boostdis;
output          vpdis;
output          vref_pd_dis;
output [1:0]    vpresrhs;
output [1:0]    vpresrls;
output          ldo2tsdcfg;
output          ldo1tsdcfg;
output          buck3tsdcfg;
output          buck2tsdcfg;
output          buck1tsdcfg;
output          boosttsdcfg;
output [1:0]    vbstsr;
output [4:0]    amux;
output          ratio;
output [3:0]    clk_tune;
output          mod_en;
output          fin_div;
output          ext_fin_sel;
output          fout_clk_sel;
output [2:0]    fout_phase;
output [3:0]    fout_mux_sel;
output          mod_cfg;
output          ldo2tsd_m;
output          ldo1tsd_m;
output          buck3tsd_m;
output          buck2tsd_m;
output          buck1tsd_m;
output          boosttsd_m;
output          ldo2oc_m;
output          ldo1oc_m;
output          buck3oc_m;
output          buck2oc_m;
output          buck1oc_m;
output          vpreoc_m;
output          wake2_m;
output          wake1_m;
output          vsupuvh;
output          vsupuv;
output          vpreuvh;
output          vsupuv7;
output          vboost_uvh_m;
output          vpre_fb_ov_m;
output          com_m;
output          vbosuvh_m;
output          vboostov_m;
output          ldo2ot;
output          ldo1ot;
output          buck3ot;
output          buck2ot;
output          buck1ot;
output          vboostot;
output          vboostov;
input           clk_fin_div_ok;
output          ldo2oc;
output          ldo1oc;
output          buck3oc;
output          buck2oc;
output          buck1oc;
output          vpreoc;
output          vboostuvh;
output          vbosuvh;
output          wk1flg;
output          wk2flg;
input           wk1rt;
input           wk2rt;
output          vsupuvh;
output          vsupuvl;
output          vpreuvh;
output          vpreuvl;
input           ldo2_st;
input           ldo1_st;
input           buck3_st;
input           buck2_st;
input           buck1_st;
input           boost_st;
output          vsupuv7;
output          vpre_fb_ov;
output [3:0]    vmon1_reg;
output [3:0]    vmon2_reg;
output [3:0]    vmon3_reg;
output [3:0]    vmon4_reg;
input  [4:0]    lvb1_svs;
output [15:0]   memory0;
output [15:0]   memory1;
input  [7:0]    deviceid;
input  [3:0]    mmrev;
input  [3:0]    fmrev;
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
output [15:0]   wd_ seed;
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
output          int_inh_vmon4_ov_uv;
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
reg             i2c_m_req;
reg             i2c_m_crc;
reg             spi_m_crc;
reg             spi_m_req;
reg             spi_m_clk;
wire            vldo2_g;
wire            vldo1_g;
wire            vbuck3_g;
wire            vbuck2_g;
wire            vbuck1_g;
wire            vpoost_g;
wire            vpre_g;
wire            wu_g;
wire            com_err;
reg             goto_stby;
reg             w1dis;
reg             w2dis;
wire            main_normal;
reg             ext_fin_dis;
wire            ext_fin_sel_rt;
wire            pll_lock_rt;
reg             ldo2en;
reg             ldo1en;
reg             buck3en;
reg             buck2en;
reg             buck1en;
reg             boosten;
reg             vpen;
reg             ldo2dis;
reg             ldo1dis;
reg             buck3dis;
reg             buck2dis;
reg             buck1dis;
reg             boostdis;
reg             vpdis;
reg             vref_pd_dis;
reg  [1:0]      vpresrhs;
reg  [1:0]      vpresrls;
reg             ldo2tsdcfg;
reg             ldo1tsdcfg;
reg             buck3tsdcfg;
reg             buck2tsdcfg;
reg             buck1tsdcfg;
reg             boosttsdcfg;
reg  [1:0]      vbstsr;
reg  [4:0]      amux;
reg             ratio;
reg  [3:0]      clk_tune;
reg             mod_en;
reg             fin_div;
reg             ext_fin_sel;
reg             fout_clk_sel;
reg  [2:0]      fout_phase;
reg  [3:0]      fout_mux_sel;
reg             mod_cfg;
reg             ldo2tsd_m;
reg             ldo1tsd_m;
reg             buck3tsd_m;
reg             buck2tsd_m;
reg             buck1tsd_m;
reg             boosttsd_m;
reg             ldo2oc_m;
reg             ldo1oc_m;
reg             buck3oc_m;
reg             buck2oc_m;
reg             buck1oc_m;
reg             vpreoc_m;
reg             wake2_m;
reg             wake1_m;
reg             vsupuvh;
reg             vsupuv;
reg             vpreuvh;
reg             vsupuv7;
reg             vboost_uvh_m;
reg             vpre_fb_ov_m;
reg             com_m;
reg             vbosuvh_m;
reg             vboostov_m;
reg             ldo2ot;
reg             ldo1ot;
reg             buck3ot;
reg             buck2ot;
reg             buck1ot;
reg             vboostot;
reg             vboostov;
wire            clk_fin_div_ok;
reg             ldo2oc;
reg             ldo1oc;
reg             buck3oc;
reg             buck2oc;
reg             buck1oc;
reg             vpreoc;
reg             vboostuvh;
reg             vbosuvh;
reg             wk1flg;
reg             wk2flg;
wire            wk1rt;
wire            wk2rt;
reg             vsupuvh;
reg             vsupuvl;
reg             vpreuvh;
reg             vpreuvl;
wire            ldo2_st;
wire            ldo1_st;
wire            buck3_st;
wire            buck2_st;
wire            buck1_st;
wire            boost_st;
reg             vsupuv7;
reg             vpre_fb_ov;
reg  [3:0]      vmon1_reg;
reg  [3:0]      vmon2_reg;
reg  [3:0]      vmon3_reg;
reg  [3:0]      vmon4_reg;
wire [4:0]      lvb1_svs;
reg  [15:0]     memory0;
reg  [15:0]     memory1;
wire [7:0]      deviceid;
wire [3:0]      mmrev;
wire [3:0]      fmrev;
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
reg  [15:0]     wd_ seed;
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
reg             int_inh_vmon4_ov_uv;
reg             int_inh_vmon4_ov_uv;
wire [4:0]      fsm_state;
reg             reg_corrupt;
reg             otp_corrupt;
wire            dbg_mode;
reg             dbg_exit;
wire [15:0]     M_FLAG;
wire [15:0]     M_MODE;
wire [15:0]     M_REG_CTRL1;
wire [15:0]     M_REG_CTRL2;
wire [15:0]     M_AMUX;
wire [15:0]     M_CLOCK;
wire [15:0]     M_INT_MASK1;
wire [15:0]     M_INT_MASK2;
wire [15:0]     M_FLAG1;
wire [15:0]     M_FLAG2;
wire [15:0]     M_VMON_REGX;
wire [15:0]     M_LVB1_SVS;
wire [15:0]     M_MEMORY0;
wire [15:0]     M_MEMORY1;
wire [15:0]     M_DEVICE;
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
wire            m_flag_wr;
wire            m_flag_rd;
wire            m_mode_wr;
wire            m_mode_rd;
wire            m_reg_ctrl1_wr;
wire            m_reg_ctrl1_rd;
wire            m_reg_ctrl2_wr;
wire            m_reg_ctrl2_rd;
wire            m_amux_wr;
wire            m_amux_rd;
wire            m_clock_wr;
wire            m_clock_rd;
wire            m_int_mask1_wr;
wire            m_int_mask1_rd;
wire            m_int_mask2_wr;
wire            m_int_mask2_rd;
wire            m_flag1_wr;
wire            m_flag1_rd;
wire            m_flag2_wr;
wire            m_flag2_rd;
wire            m_vmon_regx_wr;
wire            m_vmon_regx_rd;
wire            m_lvb1_svs_wr;
wire            m_lvb1_svs_rd;
wire            m_memory0_wr;
wire            m_memory0_rd;
wire            m_memory1_wr;
wire            m_memory1_rd;
wire            m_device_wr;
wire            m_device_rd;
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
assign m_flag_wr = (paddr == 32'h0 + 8'h0) & reg_wr;
assign m_flag_rd = (paddr == 32'h0 + 8'h0) & reg_rd;
assign m_mode_wr = (paddr == 32'h0 + 8'h1) & reg_wr;
assign m_mode_rd = (paddr == 32'h0 + 8'h1) & reg_rd;
assign m_reg_ctrl1_wr = (paddr == 32'h0 + 8'h2) & reg_wr;
assign m_reg_ctrl1_rd = (paddr == 32'h0 + 8'h2) & reg_rd;
assign m_reg_ctrl2_wr = (paddr == 32'h0 + 8'h3) & reg_wr;
assign m_reg_ctrl2_rd = (paddr == 32'h0 + 8'h3) & reg_rd;
assign m_amux_wr = (paddr == 32'h0 + 8'h4) & reg_wr;
assign m_amux_rd = (paddr == 32'h0 + 8'h4) & reg_rd;
assign m_clock_wr = (paddr == 32'h0 + 8'h5) & reg_wr;
assign m_clock_rd = (paddr == 32'h0 + 8'h5) & reg_rd;
assign m_int_mask1_wr = (paddr == 32'h0 + 8'h6) & reg_wr;
assign m_int_mask1_rd = (paddr == 32'h0 + 8'h6) & reg_rd;
assign m_int_mask2_wr = (paddr == 32'h0 + 8'h7) & reg_wr;
assign m_int_mask2_rd = (paddr == 32'h0 + 8'h7) & reg_rd;
assign m_flag1_wr = (paddr == 32'h0 + 8'h8) & reg_wr;
assign m_flag1_rd = (paddr == 32'h0 + 8'h8) & reg_rd;
assign m_flag2_wr = (paddr == 32'h0 + 8'h8) & reg_wr;
assign m_flag2_rd = (paddr == 32'h0 + 8'h8) & reg_rd;
assign m_vmon_regx_wr = (paddr == 32'h0 + 8'hA) & reg_wr;
assign m_vmon_regx_rd = (paddr == 32'h0 + 8'hA) & reg_rd;
assign m_lvb1_svs_wr = (paddr == 32'h0 + 8'hB) & reg_wr;
assign m_lvb1_svs_rd = (paddr == 32'h0 + 8'hB) & reg_rd;
assign m_memory0_wr = (paddr == 32'h0 + 8'h23) & reg_wr;
assign m_memory0_rd = (paddr == 32'h0 + 8'h23) & reg_rd;
assign m_memory1_wr = (paddr == 32'h0 + 8'h24) & reg_wr;
assign m_memory1_rd = (paddr == 32'h0 + 8'h24) & reg_rd;
assign m_device_wr = (paddr == 32'h0 + 8'h25) & reg_wr;
assign m_device_rd = (paddr == 32'h0 + 8'h25) & reg_rd;
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
assign M_FLAG[0] = i2c_m_req;
assign M_FLAG[1] = i2c_m_crc;
assign M_FLAG[2] = spi_m_crc;
assign M_FLAG[3] = spi_m_req;
assign M_FLAG[4] = spi_m_clk;
assign M_FLAG[6:5] = 2'b0;
assign M_FLAG[7] = vldo2_g;
assign M_FLAG[8] = vldo1_g;
assign M_FLAG[9] = vbuck3_g;
assign M_FLAG[10] = vbuck2_g;
assign M_FLAG[11] = vbuck1_g;
assign M_FLAG[12] = vpoost_g;
assign M_FLAG[13] = vpre_g;
assign M_FLAG[14] = wu_g;
assign M_FLAG[15] = com_err;
assign M_MODE[0] = 1'b0;
assign M_MODE[1] = w1dis;
assign M_MODE[2] = w2dis;
assign M_MODE[4:3] = 2'b0;
assign M_MODE[5] = main_normal;
assign M_MODE[6] = 1'b0;
assign M_MODE[7] = ext_fin_sel_rt;
assign M_MODE[8] = pll_lock_rt;
assign M_MODE[15:9] = 7'b0;
assign M_REG_CTRL1[0] = 1'b0;
assign M_REG_CTRL1[1] = 1'b0;
assign M_REG_CTRL1[2] = 1'b0;
assign M_REG_CTRL1[3] = 1'b0;
assign M_REG_CTRL1[4] = 1'b0;
assign M_REG_CTRL1[5] = 1'b0;
assign M_REG_CTRL1[6] = 1'b0;
assign M_REG_CTRL1[7] = 1'b0;
assign M_REG_CTRL1[8] = 1'b0;
assign M_REG_CTRL1[9] = 1'b0;
assign M_REG_CTRL1[10] = 1'b0;
assign M_REG_CTRL1[11] = 1'b0;
assign M_REG_CTRL1[12] = 1'b0;
assign M_REG_CTRL1[13] = 1'b0;
assign M_REG_CTRL1[14] = 1'b0;
assign M_REG_CTRL1[15] = vref_pd_dis;
assign M_REG_CTRL2[1:0] = vpresrhs;
assign M_REG_CTRL2[2] = 1'b0;
assign M_REG_CTRL2[4:3] = vpresrls;
assign M_REG_CTRL2[7:5] = 3'b0;
assign M_REG_CTRL2[8] = ldo2tsdcfg;
assign M_REG_CTRL2[9] = ldo1tsdcfg;
assign M_REG_CTRL2[10] = buck3tsdcfg;
assign M_REG_CTRL2[11] = buck2tsdcfg;
assign M_REG_CTRL2[12] = buck1tsdcfg;
assign M_REG_CTRL2[13] = boosttsdcfg;
assign M_REG_CTRL2[15:14] = vbstsr;
assign M_AMUX[4:0] = amux;
assign M_AMUX[5] = ratio;
assign M_AMUX[15:6] = 10'b0;
assign M_CLOCK[3:0] = clk_tune;
assign M_CLOCK[4] = mod_en;
assign M_CLOCK[5] = fin_div;
assign M_CLOCK[6] = 1'b0;
assign M_CLOCK[7] = fout_clk_sel;
assign M_CLOCK[10:8] = fout_phase;
assign M_CLOCK[14:11] = fout_mux_sel;
assign M_CLOCK[15] = mod_cfg;
assign M_INT_MASK1[0] = ldo2tsd_m;
assign M_INT_MASK1[1] = ldo1tsd_m;
assign M_INT_MASK1[2] = buck3tsd_m;
assign M_INT_MASK1[3] = buck2tsd_m;
assign M_INT_MASK1[4] = buck1tsd_m;
assign M_INT_MASK1[5] = boosttsd_m;
assign M_INT_MASK1[7:6] = 2'b0;
assign M_INT_MASK1[8] = ldo2oc_m;
assign M_INT_MASK1[9] = ldo1oc_m;
assign M_INT_MASK1[10] = buck3oc_m;
assign M_INT_MASK1[11] = buck2oc_m;
assign M_INT_MASK1[12] = buck1oc_m;
assign M_INT_MASK1[13] = 1'b0;
assign M_INT_MASK1[14] = vpreoc_m;
assign M_INT_MASK1[15] = 1'b0;
assign M_INT_MASK2[0] = wake2_m;
assign M_INT_MASK2[1] = wake1_m;
assign M_INT_MASK2[2] = vsupuvh;
assign M_INT_MASK2[3] = vsupuv;
assign M_INT_MASK2[4] = vpreuvh;
assign M_INT_MASK2[5] = 1'b0;
assign M_INT_MASK2[6] = vsupuv7;
assign M_INT_MASK2[7] = vboost_uvh_m;
assign M_INT_MASK2[8] = vpre_fb_ov_m;
assign M_INT_MASK2[9] = com_m;
assign M_INT_MASK2[10] = vbosuvh_m;
assign M_INT_MASK2[11] = vboostov_m;
assign M_INT_MASK2[15:12] = 4'b0;
assign M_FLAG1[0] = ldo2ot;
assign M_FLAG1[1] = ldo1ot;
assign M_FLAG1[2] = buck3ot;
assign M_FLAG1[3] = buck2ot;
assign M_FLAG1[4] = buck1ot;
assign M_FLAG1[5] = vboostot;
assign M_FLAG1[6] = vboostov;
assign M_FLAG1[7] = clk_fin_div_ok;
assign M_FLAG1[8] = ldo2oc;
assign M_FLAG1[9] = ldo1oc;
assign M_FLAG1[10] = buck3oc;
assign M_FLAG1[11] = buck2oc;
assign M_FLAG1[12] = buck1oc;
assign M_FLAG1[13] = vpreoc;
assign M_FLAG1[14] = vboostuvh;
assign M_FLAG1[15] = vbosuvh;
assign M_FLAG2[0] = wk1flg;
assign M_FLAG2[1] = wk2flg;
assign M_FLAG2[2] = wk1rt;
assign M_FLAG2[3] = wk2rt;
assign M_FLAG2[4] = vsupuvh;
assign M_FLAG2[5] = vsupuvl;
assign M_FLAG2[6] = vpreuvh;
assign M_FLAG2[7] = vpreuvl;
assign M_FLAG2[8] = ldo2_st;
assign M_FLAG2[9] = ldo1_st;
assign M_FLAG2[10] = buck3_st;
assign M_FLAG2[11] = buck2_st;
assign M_FLAG2[12] = buck1_st;
assign M_FLAG2[13] = boost_st;
assign M_FLAG2[14] = vsupuv7;
assign M_FLAG2[15] = vpre_fb_ov;
assign M_VMON_REGX[3:0] = vmon1_reg;
assign M_VMON_REGX[7:4] = vmon2_reg;
assign M_VMON_REGX[11:8] = vmon3_reg;
assign M_VMON_REGX[15:12] = vmon4_reg;
assign M_LVB1_SVS[4:0] = lvb1_svs;
assign M_LVB1_SVS[15:5] = 11'b0;
assign M_MEMORY0[15:0] = memory0;
assign M_MEMORY1[15:0] = memory1;
assign M_DEVICE[7:0] = deviceid;
assign M_DEVICE[11:8] = mmrev;
assign M_DEVICE[15:12] = fmrev;
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
assign FS_WD_SEED[15:0] = wd_ seed;
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
assign FS_INTB_MASK[8] = int_inh_vmon4_ov_uv;
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
        i2c_m_req <= 1'b0;
    end
    else if(m_flag_wr) begin
        i2c_m_req <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        i2c_m_crc <= 1'b0;
    end
    else if(m_flag_wr) begin
        i2c_m_crc <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        spi_m_crc <= 1'b0;
    end
    else if(m_flag_wr) begin
        spi_m_crc <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        spi_m_req <= 1'b0;
    end
    else if(m_flag_wr) begin
        spi_m_req <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        spi_m_clk <= 1'b0;
    end
    else if(m_flag_wr) begin
        spi_m_clk <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        goto_stby <= 1'b0;
    end
    else if(m_mode_wr) begin
        goto_stby <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        w1dis <= 1'b0;
    end
    else if(m_mode_wr) begin
        w1dis <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        w2dis <= 1'b0;
    end
    else if(m_mode_wr) begin
        w2dis <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ext_fin_dis <= 1'b0;
    end
    else if(m_mode_wr) begin
        ext_fin_dis <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2en <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        ldo2en <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1en <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        ldo1en <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3en <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        buck3en <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2en <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        buck2en <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1en <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        buck1en <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        boosten <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        boosten <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpen <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        vpen <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2dis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        ldo2dis <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1dis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        ldo1dis <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3dis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        buck3dis <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2dis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        buck2dis <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1dis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        buck1dis <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        boostdis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        boostdis <= pwdata[13];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpdis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        vpdis <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vref_pd_dis <= 1'b0;
    end
    else if(m_reg_ctrl1_wr) begin
        vref_pd_dis <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpresrhs <= 2'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        vpresrhs <= pwdata[1:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpresrls <= 2'h3;
    end
    else if(m_reg_ctrl2_wr) begin
        vpresrls <= pwdata[4:3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2tsdcfg <= 1'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        ldo2tsdcfg <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1tsdcfg <= 1'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        ldo1tsdcfg <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3tsdcfg <= 1'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        buck3tsdcfg <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2tsdcfg <= 1'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        buck2tsdcfg <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1tsdcfg <= 1'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        buck1tsdcfg <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        boosttsdcfg <= 1'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        boosttsdcfg <= pwdata[13];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbstsr <= 2'b0;
    end
    else if(m_reg_ctrl2_wr) begin
        vbstsr <= pwdata[15:14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        amux <= 5'b0;
    end
    else if(m_amux_wr) begin
        amux <= pwdata[4:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ratio <= 1'b0;
    end
    else if(m_amux_wr) begin
        ratio <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        clk_tune <= 4'b0;
    end
    else if(m_clock_wr) begin
        clk_tune <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        mod_en <= 1'b0;
    end
    else if(m_clock_wr) begin
        mod_en <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fin_div <= 1'b0;
    end
    else if(m_clock_wr) begin
        fin_div <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ext_fin_sel <= 1'b0;
    end
    else if(m_clock_wr) begin
        ext_fin_sel <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fout_clk_sel <= 1'b0;
    end
    else if(m_clock_wr) begin
        fout_clk_sel <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fout_phase <= 3'b0;
    end
    else if(m_clock_wr) begin
        fout_phase <= pwdata[10:8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        fout_mux_sel <= 4'b0;
    end
    else if(m_clock_wr) begin
        fout_mux_sel <= pwdata[14:11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        mod_cfg <= 1'b0;
    end
    else if(m_clock_wr) begin
        mod_cfg <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2tsd_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        ldo2tsd_m <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1tsd_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        ldo1tsd_m <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3tsd_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        buck3tsd_m <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2tsd_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        buck2tsd_m <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1tsd_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        buck1tsd_m <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        boosttsd_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        boosttsd_m <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2oc_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        ldo2oc_m <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1oc_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        ldo1oc_m <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3oc_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        buck3oc_m <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2oc_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        buck2oc_m <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1oc_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        buck1oc_m <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpreoc_m <= 1'b0;
    end
    else if(m_int_mask1_wr) begin
        vpreoc_m <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wake2_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        wake2_m <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wake1_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        wake1_m <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupuvh <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vsupuvh <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupuv <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vsupuv <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpreuvh <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vpreuvh <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupuv7 <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vsupuv7 <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vboost_uvh_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vboost_uvh_m <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpre_fb_ov_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vpre_fb_ov_m <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        com_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        com_m <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbosuvh_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vbosuvh_m <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vboostov_m <= 1'b0;
    end
    else if(m_int_mask2_wr) begin
        vboostov_m <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2ot <= 1'b0;
    end
    else if(m_flag1_wr) begin
        ldo2ot <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1ot <= 1'b0;
    end
    else if(m_flag1_wr) begin
        ldo1ot <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3ot <= 1'b0;
    end
    else if(m_flag1_wr) begin
        buck3ot <= pwdata[2];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2ot <= 1'b0;
    end
    else if(m_flag1_wr) begin
        buck2ot <= pwdata[3];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1ot <= 1'b0;
    end
    else if(m_flag1_wr) begin
        buck1ot <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vboostot <= 1'b0;
    end
    else if(m_flag1_wr) begin
        vboostot <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vboostov <= 1'b0;
    end
    else if(m_flag1_wr) begin
        vboostov <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo2oc <= 1'b0;
    end
    else if(m_flag1_wr) begin
        ldo2oc <= pwdata[8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        ldo1oc <= 1'b0;
    end
    else if(m_flag1_wr) begin
        ldo1oc <= pwdata[9];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck3oc <= 1'b0;
    end
    else if(m_flag1_wr) begin
        buck3oc <= pwdata[10];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck2oc <= 1'b0;
    end
    else if(m_flag1_wr) begin
        buck2oc <= pwdata[11];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        buck1oc <= 1'b0;
    end
    else if(m_flag1_wr) begin
        buck1oc <= pwdata[12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpreoc <= 1'b0;
    end
    else if(m_flag1_wr) begin
        vpreoc <= pwdata[13];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vboostuvh <= 1'b0;
    end
    else if(m_flag1_wr) begin
        vboostuvh <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vbosuvh <= 1'b0;
    end
    else if(m_flag1_wr) begin
        vbosuvh <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wk1flg <= 1'b0;
    end
    else if(m_flag2_wr) begin
        wk1flg <= pwdata[0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        wk2flg <= 1'b0;
    end
    else if(m_flag2_wr) begin
        wk2flg <= pwdata[1];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupuvh <= 1'b0;
    end
    else if(m_flag2_wr) begin
        vsupuvh <= pwdata[4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupuvl <= 1'b0;
    end
    else if(m_flag2_wr) begin
        vsupuvl <= pwdata[5];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpreuvh <= 1'b0;
    end
    else if(m_flag2_wr) begin
        vpreuvh <= pwdata[6];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpreuvl <= 1'b0;
    end
    else if(m_flag2_wr) begin
        vpreuvl <= pwdata[7];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vsupuv7 <= 1'b0;
    end
    else if(m_flag2_wr) begin
        vsupuv7 <= pwdata[14];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vpre_fb_ov <= 1'b0;
    end
    else if(m_flag2_wr) begin
        vpre_fb_ov <= pwdata[15];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon1_reg <= 4'b0;
    end
    else if(m_vmon_regx_wr) begin
        vmon1_reg <= pwdata[3:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon2_reg <= 4'b0;
    end
    else if(m_vmon_regx_wr) begin
        vmon2_reg <= pwdata[7:4];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon3_reg <= 4'b0;
    end
    else if(m_vmon_regx_wr) begin
        vmon3_reg <= pwdata[11:8];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        vmon4_reg <= 4'b0;
    end
    else if(m_vmon_regx_wr) begin
        vmon4_reg <= pwdata[15:12];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        memory0 <= 16'b0;
    end
    else if(m_memory0_wr) begin
        memory0 <= pwdata[15:0];
    end
end
always@(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        memory1 <= 16'b0;
    end
    else if(m_memory1_wr) begin
        memory1 <= pwdata[15:0];
    end
end
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
        wdw_recovery <= 4'hb;
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
        wd_ seed <= 16'h5ab2;
    end
    else if(fs_wd_seed_wr) begin
        wd_ seed <= pwdata[15:0];
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
        int_inh_vmon4_ov_uv <= 1'b0;
    end
    else if(fs_intb_mask_wr) begin
        int_inh_vmon4_ov_uv <= pwdata[8];
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
        32'h0 + 8'h0 : prdata = M_FLAG    ;
        32'h0 + 8'h1 : prdata = M_MODE    ;
        32'h0 + 8'h2 : prdata = M_REG_CTRL1;
        32'h0 + 8'h3 : prdata = M_REG_CTRL2;
        32'h0 + 8'h4 : prdata = M_AMUX    ;
        32'h0 + 8'h5 : prdata = M_CLOCK   ;
        32'h0 + 8'h6 : prdata = M_INT_MASK1;
        32'h0 + 8'h7 : prdata = M_INT_MASK2;
        32'h0 + 8'h8 : prdata = M_FLAG1   ;
        32'h0 + 8'h8 : prdata = M_FLAG2   ;
        32'h0 + 8'hA : prdata = M_VMON_REGX;
        32'h0 + 8'hB : prdata = M_LVB1_SVS;
        32'h0 + 8'h23 : prdata = M_MEMORY0 ;
        32'h0 + 8'h24 : prdata = M_MEMORY1 ;
        32'h0 + 8'h25 : prdata = M_DEVICE  ;
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