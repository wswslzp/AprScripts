global vars
set vars(version)                                  17.1.0
source inn_config.tcl

#######################################################################
# Define some variables to point to data, libraries, and scripts
#----------------------------------------------------------------------
#set vars(design_root)                              ""
set vars(script_root)                              ./SCRIPTS
set vars(dbs_dir)                                  ./DBS
set vars(rpt_dir)                                  ./RPT


#######################################################################
# Define technology and physical libraries
#-----------------------------------------------------------------
set vars(process)                                  55nm
set vars(lef_files) \
  "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/lef_techfiles/tech/HL055P_1p6m_501.lef \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/lef.1p6m_501/M31GPIO1225HL055P.lef \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/M31GPSC900HL055PR.0.01/lef/M31GPSC900HL055PR.lef \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p64x8cm2sw0/asdrlspkb1p64x8cm2sw0.plef \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p128x8cm4sw0/asdrlspkb1p128x8cm4sw0.plef \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/sadslspkb2p128x42m4b2w0cp0d0t0/sadslspkb2p128x42m4b2w0cp0d0t0.plef"
#set vars(ilm_list)                                 ""
#set vars(partition_list)                           ""


#######################################################################
# Define the design data
#-----------------------------------------------------------------
set vars(netlist) "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Top_Remcm_mini_sram_all.v"
set vars(design)                                   Top_Remcm_mini_sram_withio
set vars(fp_file) "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/Top_Remcm_mini_sram_withio03142334.fp"
#set vars(def_files) ""
#set vars(fp_tcl_file) ""
#set vars(fp_tcl_proc)                              ""
#set vars(scan_def) ""
set vars(power_nets)                               "CORE_VCCK IO_VCCK"
set vars(ground_nets)                              "CORE_GNDK IO_GNDK"
set vars(honor_pitch)                              FALSE

#set vars(cts_spec) ""
set vars(cts_cells)                                "CLKBUFX12AR9 CLKBUFX16AR9 CLKBUFX1AR9 CLKBUFX20AR9 CLKBUFX2AR9 CLKBUFX3AR9 CLKBUFX4AR9 CLKBUFX6AR9 CLKBUFX8AR9 CLKINVX12AR9 CLKINVX16AR9 CLKINVX1AR9 CLKINVX20AR9 CLKINVX2AR9 CLKINVX3AR9 CLKINVX4AR9 CLKINVX6AR9 CLKINVX8AR9"

set vars(enable_ss)                                false
set vars(flow)                                     mmmc
set vars(enable_ocv)                               pre_postcts


#######################################################################
# Define library sets ...
#-----------------------------------------------------------------
set vars(library_sets)                             "N40CSS1P08 25CTT1P2 N40CFF1P32"
#set vars(N40CSS1P08,si) ""
set vars(N40CSS1P08,timing) \
  "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/ccs/M31GPSC900HL055PR_N40CSS1P08_cworst_ccs.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/nldm/M31GPIO1225HL055P_N40CSS1P08V2P97_nldm.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p64x8cm2sw0/ss1p08vn40c/asdrlspkb1p64x8cm2sw0.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p128x8cm4sw0/ss1p08vn40c/asdrlspkb1p128x8cm4sw0.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/sadslspkb2p128x42m4b2w0cp0d0t0/ss1p08vn40c/sadslspkb2p128x42m4b2w0cp0d0t0.lib"
#set vars(25CTT1P2,si) ""
set vars(25CTT1P2,timing) \
  "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/ccs/M31GPSC900HL055PR_25CTT1P2_ctyp_ccs.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/nldm/M31GPIO1225HL055P_25CTT1P2V3P3_nldm.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p64x8cm2sw0/tt1p2v25c/asdrlspkb1p64x8cm2sw0.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p128x8cm4sw0/tt1p2v25c/asdrlspkb1p128x8cm4sw0.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/sadslspkb2p128x42m4b2w0cp0d0t0/tt1p2v25c/sadslspkb2p128x42m4b2w0cp0d0t0.lib"
#set vars(N40CFF1P32,si) ""
set vars(N40CFF1P32,timing) \
  "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/ccs/M31GPSC900HL055PR_N40CFF1P32_cbest_ccs.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/nldm/M31GPIO1225HL055P_N40CFF1P32V3P63_nldm.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p64x8cm2sw0/ff1p32vn40c/asdrlspkb1p64x8cm2sw0.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/asdrlspkb1p128x8cm4sw0/ff1p32vn40c/asdrlspkb1p128x8cm4sw0.lib \
   /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/Raochl_memory/sadslspkb2p128x42m4b2w0cp0d0t0/ff1p32vn40c/sadslspkb2p128x42m4b2w0cp0d0t0.lib"


#######################################################################
# Define rc corners ...
#-----------------------------------------------------------------
set vars(rc_corners)                               "rcbest cbest rcworst cworst typical"
#set vars(rcbest,qx_lib_file)                       ""
#set vars(rcbest,qx_conf_file)                      ""
#set vars(rcbest,cap_table)                         ""
set vars(rcbest,qx_tech_file)                      /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/hlmc_cl055lp_1p6m_1tm4x_qrc_cal_v2p1/rcbest/qrcTechFile
set vars(rcbest,T)                                 25
set vars(rcbest,pre_route_res_factor)              1.00
set vars(rcbest,pre_route_cap_factor)              1.00
set vars(rcbest,pre_route_clk_res_factor)          0.00
set vars(rcbest,pre_route_clk_cap_factor)          0.00
set vars(rcbest,post_route_res_factor)             "1.00 1.00 1.00"
set vars(rcbest,post_route_cap_factor)             "1.00 1.00 1.00"
set vars(rcbest,post_route_xcap_factor)            "1.00 1.00 1.00"
set vars(rcbest,post_route_clk_res_factor)         "0.00 1.00 1.00"
set vars(rcbest,post_route_clk_cap_factor)         "0.00 1.00 1.00"
#set vars(rcbest,xcap_factor)                       ""
#set vars(cbest,qx_lib_file)                        ""
#set vars(cbest,qx_conf_file)                       ""
#set vars(cbest,cap_table)                          ""
set vars(cbest,qx_tech_file)                       /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/hlmc_cl055lp_1p6m_1tm4x_qrc_cal_v2p1/cbest/qrcTechFile
set vars(cbest,T)                                  25
set vars(cbest,pre_route_res_factor)               1.00
set vars(cbest,pre_route_cap_factor)               1.00
set vars(cbest,pre_route_clk_res_factor)           0.00
set vars(cbest,pre_route_clk_cap_factor)           0.00
set vars(cbest,post_route_res_factor)              "1.00 1.00 1.00"
set vars(cbest,post_route_cap_factor)              "1.00 1.00 1.00"
set vars(cbest,post_route_xcap_factor)             "1.00 1.00 1.00"
set vars(cbest,post_route_clk_res_factor)          "0.00 1.00 1.00"
set vars(cbest,post_route_clk_cap_factor)          "0.00 1.00 1.00"
#set vars(cbest,xcap_factor)                        ""
#set vars(rcworst,qx_lib_file)                      ""
#set vars(rcworst,qx_conf_file)                     ""
#set vars(rcworst,cap_table)                        ""
set vars(rcworst,qx_tech_file)                     /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/hlmc_cl055lp_1p6m_1tm4x_qrc_cal_v2p1/rcworst/qrcTechFile
set vars(rcworst,T)                                25
set vars(rcworst,pre_route_res_factor)             1.00
set vars(rcworst,pre_route_cap_factor)             1.00
set vars(rcworst,pre_route_clk_res_factor)         0.00
set vars(rcworst,pre_route_clk_cap_factor)         0.00
set vars(rcworst,post_route_res_factor)            "1.00 1.00 1.00"
set vars(rcworst,post_route_cap_factor)            "1.00 1.00 1.00"
set vars(rcworst,post_route_xcap_factor)           "1.00 1.00 1.00"
set vars(rcworst,post_route_clk_res_factor)        "0.00 1.00 1.00"
set vars(rcworst,post_route_clk_cap_factor)        "0.00 1.00 1.00"
#set vars(rcworst,xcap_factor)                      ""
#set vars(cworst,qx_lib_file)                       ""
#set vars(cworst,qx_conf_file)                      ""
#set vars(cworst,cap_table)                         ""
set vars(cworst,qx_tech_file)                      /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/hlmc_cl055lp_1p6m_1tm4x_qrc_cal_v2p1/cworst/qrcTechFile
set vars(cworst,T)                                 25
set vars(cworst,pre_route_res_factor)              1.00
set vars(cworst,pre_route_cap_factor)              1.00
set vars(cworst,pre_route_clk_res_factor)          0.00
set vars(cworst,pre_route_clk_cap_factor)          0.00
set vars(cworst,post_route_res_factor)             "1.00 1.00 1.00"
set vars(cworst,post_route_cap_factor)             "1.00 1.00 1.00"
set vars(cworst,post_route_xcap_factor)            "1.00 1.00 1.00"
set vars(cworst,post_route_clk_res_factor)         "0.00 1.00 1.00"
set vars(cworst,post_route_clk_cap_factor)         "0.00 1.00 1.00"
#set vars(cworst,xcap_factor)                       ""
#set vars(typical,qx_lib_file)                      ""
#set vars(typical,qx_conf_file)                     ""
#set vars(typical,cap_table)                        ""
set vars(typical,qx_tech_file)                     /home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/hlmc_cl055lp_1p6m_1tm4x_qrc_cal_v2p1/typical/qrcTechFile
set vars(typical,T)                                25
set vars(typical,pre_route_res_factor)             1.00
set vars(typical,pre_route_cap_factor)             1.00
set vars(typical,pre_route_clk_res_factor)         0.00
set vars(typical,pre_route_clk_cap_factor)         0.00
set vars(typical,post_route_res_factor)            "1.00 1.00 1.00"
set vars(typical,post_route_cap_factor)            "1.00 1.00 1.00"
set vars(typical,post_route_xcap_factor)           "1.00 1.00 1.00"
set vars(typical,post_route_clk_res_factor)        "0.00 1.00 1.00"
set vars(typical,post_route_clk_cap_factor)        "0.00 1.00 1.00"
#set vars(typical,xcap_factor)                      ""


#######################################################################
# Define delay corners ...
#-----------------------------------------------------------------
set vars(enable_cppr)                               hold
set vars(delay_corners)                             "cbest_rc_n40css1p08 rcworst_rc_25ctt1p2 cworst_rc_n40css1p08 typical_rc_25ctt1p2 rcworst_rc_n40cff1p32 rcbest_rc_n40css1p08 rcbest_rc_25ctt1p2 typical_rc_n40cff1p32 cbest_rc_n40cff1p32 cworst_rc_n40cff1p32 cworst_rc_25ctt1p2 rcworst_rc_n40css1p08 rcbest_rc_n40cff1p32 cbestl_rc_25ctt1p2 typical_rc_n40css1p08"
#set vars(cbest_rc_n40css1p08,clock_cell_early)      ""
#set vars(cbest_rc_n40css1p08,clock_cell_late)       ""
#set vars(cbest_rc_n40css1p08,clock_net_early)       ""
#set vars(cbest_rc_n40css1p08,clock_net_late)        ""
#set vars(cbest_rc_n40css1p08,data_cell_early)       ""
#set vars(cbest_rc_n40css1p08,data_cell_late)        ""
#set vars(cbest_rc_n40css1p08,data_net_early)        ""
#set vars(cbest_rc_n40css1p08,data_net_late)         ""
set vars(cbest_rc_n40css1p08,rc_corner)             cbest
set vars(cbest_rc_n40css1p08,library_set)           N40CSS1P08
set vars(cbest_rc_n40css1p08,cell_check_late)       N40CSS1P08
set vars(cbest_rc_n40css1p08,cell_check_early)      N40CSS1P08
#set vars(rcworst_rc_25ctt1p2,clock_cell_early)      ""
#set vars(rcworst_rc_25ctt1p2,clock_cell_late)       ""
#set vars(rcworst_rc_25ctt1p2,clock_net_early)       ""
#set vars(rcworst_rc_25ctt1p2,clock_net_late)        ""
#set vars(rcworst_rc_25ctt1p2,data_cell_early)       ""
#set vars(rcworst_rc_25ctt1p2,data_cell_late)        ""
#set vars(rcworst_rc_25ctt1p2,data_net_early)        ""
#set vars(rcworst_rc_25ctt1p2,data_net_late)         ""
set vars(rcworst_rc_25ctt1p2,rc_corner)             rcworst
set vars(rcworst_rc_25ctt1p2,library_set)           25CTT1P2
set vars(rcworst_rc_25ctt1p2,cell_check_late)       25CTT1P2
set vars(rcworst_rc_25ctt1p2,cell_check_early)      25CTT1P2
#set vars(cworst_rc_n40css1p08,clock_cell_early)     ""
#set vars(cworst_rc_n40css1p08,clock_cell_late)      ""
#set vars(cworst_rc_n40css1p08,clock_net_early)      ""
#set vars(cworst_rc_n40css1p08,clock_net_late)       ""
#set vars(cworst_rc_n40css1p08,data_cell_early)      ""
#set vars(cworst_rc_n40css1p08,data_cell_late)       ""
#set vars(cworst_rc_n40css1p08,data_net_early)       ""
#set vars(cworst_rc_n40css1p08,data_net_late)        ""
set vars(cworst_rc_n40css1p08,rc_corner)            cworst
set vars(cworst_rc_n40css1p08,library_set)          N40CSS1P08
set vars(cworst_rc_n40css1p08,cell_check_late)      N40CSS1P08
set vars(cworst_rc_n40css1p08,cell_check_early)     N40CSS1P08
#set vars(typical_rc_25ctt1p2,clock_cell_early)      ""
#set vars(typical_rc_25ctt1p2,clock_cell_late)       ""
#set vars(typical_rc_25ctt1p2,clock_net_early)       ""
#set vars(typical_rc_25ctt1p2,clock_net_late)        ""
#set vars(typical_rc_25ctt1p2,data_cell_early)       ""
#set vars(typical_rc_25ctt1p2,data_cell_late)        ""
#set vars(typical_rc_25ctt1p2,data_net_early)        ""
#set vars(typical_rc_25ctt1p2,data_net_late)         ""
set vars(typical_rc_25ctt1p2,rc_corner)             typical
set vars(typical_rc_25ctt1p2,library_set)           25CTT1P2
set vars(typical_rc_25ctt1p2,cell_check_late)       25CTT1P2
set vars(typical_rc_25ctt1p2,cell_check_early)      25CTT1P2
#set vars(rcworst_rc_n40cff1p32,clock_cell_early)    ""
#set vars(rcworst_rc_n40cff1p32,clock_cell_late)     ""
#set vars(rcworst_rc_n40cff1p32,clock_net_early)     ""
#set vars(rcworst_rc_n40cff1p32,clock_net_late)      ""
#set vars(rcworst_rc_n40cff1p32,data_cell_early)     ""
#set vars(rcworst_rc_n40cff1p32,data_cell_late)      ""
#set vars(rcworst_rc_n40cff1p32,data_net_early)      ""
#set vars(rcworst_rc_n40cff1p32,data_net_late)       ""
set vars(rcworst_rc_n40cff1p32,rc_corner)           rcworst
set vars(rcworst_rc_n40cff1p32,library_set)         N40CFF1P32
set vars(rcworst_rc_n40cff1p32,cell_check_late)     N40CFF1P32
set vars(rcworst_rc_n40cff1p32,cell_check_early)    N40CFF1P32
#set vars(rcbest_rc_n40css1p08,clock_cell_early)     ""
#set vars(rcbest_rc_n40css1p08,clock_cell_late)      ""
#set vars(rcbest_rc_n40css1p08,clock_net_early)      ""
#set vars(rcbest_rc_n40css1p08,clock_net_late)       ""
#set vars(rcbest_rc_n40css1p08,data_cell_early)      ""
#set vars(rcbest_rc_n40css1p08,data_cell_late)       ""
#set vars(rcbest_rc_n40css1p08,data_net_early)       ""
#set vars(rcbest_rc_n40css1p08,data_net_late)        ""
set vars(rcbest_rc_n40css1p08,rc_corner)            rcbest
set vars(rcbest_rc_n40css1p08,library_set)          N40CSS1P08
set vars(rcbest_rc_n40css1p08,cell_check_late)      N40CSS1P08
set vars(rcbest_rc_n40css1p08,cell_check_early)     N40CSS1P08
#set vars(rcbest_rc_25ctt1p2,clock_cell_early)       ""
#set vars(rcbest_rc_25ctt1p2,clock_cell_late)        ""
#set vars(rcbest_rc_25ctt1p2,clock_net_early)        ""
#set vars(rcbest_rc_25ctt1p2,clock_net_late)         ""
#set vars(rcbest_rc_25ctt1p2,data_cell_early)        ""
#set vars(rcbest_rc_25ctt1p2,data_cell_late)         ""
#set vars(rcbest_rc_25ctt1p2,data_net_early)         ""
#set vars(rcbest_rc_25ctt1p2,data_net_late)          ""
set vars(rcbest_rc_25ctt1p2,rc_corner)              rcbest
set vars(rcbest_rc_25ctt1p2,library_set)            25CTT1P2
set vars(rcbest_rc_25ctt1p2,cell_check_late)        25CTT1P2
set vars(rcbest_rc_25ctt1p2,cell_check_early)       25CTT1P2
#set vars(typical_rc_n40cff1p32,clock_cell_early)    ""
#set vars(typical_rc_n40cff1p32,clock_cell_late)     ""
#set vars(typical_rc_n40cff1p32,clock_net_early)     ""
#set vars(typical_rc_n40cff1p32,clock_net_late)      ""
#set vars(typical_rc_n40cff1p32,data_cell_early)     ""
#set vars(typical_rc_n40cff1p32,data_cell_late)      ""
#set vars(typical_rc_n40cff1p32,data_net_early)      ""
#set vars(typical_rc_n40cff1p32,data_net_late)       ""
set vars(typical_rc_n40cff1p32,rc_corner)           typical
set vars(typical_rc_n40cff1p32,library_set)         N40CFF1P32
set vars(typical_rc_n40cff1p32,cell_check_late)     N40CFF1P32
set vars(typical_rc_n40cff1p32,cell_check_early)    N40CFF1P32
#set vars(cbest_rc_n40cff1p32,clock_cell_early)      ""
#set vars(cbest_rc_n40cff1p32,clock_cell_late)       ""
#set vars(cbest_rc_n40cff1p32,clock_net_early)       ""
#set vars(cbest_rc_n40cff1p32,clock_net_late)        ""
#set vars(cbest_rc_n40cff1p32,data_cell_early)       ""
#set vars(cbest_rc_n40cff1p32,data_cell_late)        ""
#set vars(cbest_rc_n40cff1p32,data_net_early)        ""
#set vars(cbest_rc_n40cff1p32,data_net_late)         ""
set vars(cbest_rc_n40cff1p32,rc_corner)             cbest
set vars(cbest_rc_n40cff1p32,library_set)           N40CFF1P32
set vars(cbest_rc_n40cff1p32,cell_check_late)       N40CFF1P32
set vars(cbest_rc_n40cff1p32,cell_check_early)      N40CFF1P32
#set vars(cworst_rc_n40cff1p32,clock_cell_early)     ""
#set vars(cworst_rc_n40cff1p32,clock_cell_late)      ""
#set vars(cworst_rc_n40cff1p32,clock_net_early)      ""
#set vars(cworst_rc_n40cff1p32,clock_net_late)       ""
#set vars(cworst_rc_n40cff1p32,data_cell_early)      ""
#set vars(cworst_rc_n40cff1p32,data_cell_late)       ""
#set vars(cworst_rc_n40cff1p32,data_net_early)       ""
#set vars(cworst_rc_n40cff1p32,data_net_late)        ""
set vars(cworst_rc_n40cff1p32,rc_corner)            cworst
set vars(cworst_rc_n40cff1p32,library_set)          N40CFF1P32
set vars(cworst_rc_n40cff1p32,cell_check_late)      N40CFF1P32
set vars(cworst_rc_n40cff1p32,cell_check_early)     N40CFF1P32
#set vars(cworst_rc_25ctt1p2,clock_cell_early)       ""
#set vars(cworst_rc_25ctt1p2,clock_cell_late)        ""
#set vars(cworst_rc_25ctt1p2,clock_net_early)        ""
#set vars(cworst_rc_25ctt1p2,clock_net_late)         ""
#set vars(cworst_rc_25ctt1p2,data_cell_early)        ""
#set vars(cworst_rc_25ctt1p2,data_cell_late)         ""
#set vars(cworst_rc_25ctt1p2,data_net_early)         ""
#set vars(cworst_rc_25ctt1p2,data_net_late)          ""
set vars(cworst_rc_25ctt1p2,rc_corner)              cworst
set vars(cworst_rc_25ctt1p2,library_set)            25CTT1P2
set vars(cworst_rc_25ctt1p2,cell_check_late)        25CTT1P2
set vars(cworst_rc_25ctt1p2,cell_check_early)       25CTT1P2
#set vars(rcworst_rc_n40css1p08,clock_cell_early)    ""
#set vars(rcworst_rc_n40css1p08,clock_cell_late)     ""
#set vars(rcworst_rc_n40css1p08,clock_net_early)     ""
#set vars(rcworst_rc_n40css1p08,clock_net_late)      ""
#set vars(rcworst_rc_n40css1p08,data_cell_early)     ""
#set vars(rcworst_rc_n40css1p08,data_cell_late)      ""
#set vars(rcworst_rc_n40css1p08,data_net_early)      ""
#set vars(rcworst_rc_n40css1p08,data_net_late)       ""
set vars(rcworst_rc_n40css1p08,rc_corner)           rcworst
set vars(rcworst_rc_n40css1p08,library_set)         N40CSS1P08
set vars(rcworst_rc_n40css1p08,cell_check_late)     N40CSS1P08
set vars(rcworst_rc_n40css1p08,cell_check_early)    N40CSS1P08
#set vars(rcbest_rc_n40cff1p32,clock_cell_early)     ""
#set vars(rcbest_rc_n40cff1p32,clock_cell_late)      ""
#set vars(rcbest_rc_n40cff1p32,clock_net_early)      ""
#set vars(rcbest_rc_n40cff1p32,clock_net_late)       ""
#set vars(rcbest_rc_n40cff1p32,data_cell_early)      ""
#set vars(rcbest_rc_n40cff1p32,data_cell_late)       ""
#set vars(rcbest_rc_n40cff1p32,data_net_early)       ""
#set vars(rcbest_rc_n40cff1p32,data_net_late)        ""
set vars(rcbest_rc_n40cff1p32,rc_corner)            rcbest
set vars(rcbest_rc_n40cff1p32,library_set)          N40CFF1P32
set vars(rcbest_rc_n40cff1p32,cell_check_late)      N40CFF1P32
set vars(rcbest_rc_n40cff1p32,cell_check_early)     N40CFF1P32
#set vars(cbestl_rc_25ctt1p2,clock_cell_early)       ""
#set vars(cbestl_rc_25ctt1p2,clock_cell_late)        ""
#set vars(cbestl_rc_25ctt1p2,clock_net_early)        ""
#set vars(cbestl_rc_25ctt1p2,clock_net_late)         ""
#set vars(cbestl_rc_25ctt1p2,data_cell_early)        ""
#set vars(cbestl_rc_25ctt1p2,data_cell_late)         ""
#set vars(cbestl_rc_25ctt1p2,data_net_early)         ""
#set vars(cbestl_rc_25ctt1p2,data_net_late)          ""
set vars(cbestl_rc_25ctt1p2,rc_corner)              cbest
set vars(cbestl_rc_25ctt1p2,library_set)            25CTT1P2
set vars(cbestl_rc_25ctt1p2,cell_check_late)        25CTT1P2
set vars(cbestl_rc_25ctt1p2,cell_check_early)       25CTT1P2
#set vars(typical_rc_n40css1p08,clock_cell_early)    ""
#set vars(typical_rc_n40css1p08,clock_cell_late)     ""
#set vars(typical_rc_n40css1p08,clock_net_early)     ""
#set vars(typical_rc_n40css1p08,clock_net_late)      ""
#set vars(typical_rc_n40css1p08,data_cell_early)     ""
#set vars(typical_rc_n40css1p08,data_cell_late)      ""
#set vars(typical_rc_n40css1p08,data_net_early)      ""
#set vars(typical_rc_n40css1p08,data_net_late)       ""
set vars(typical_rc_n40css1p08,rc_corner)           typical
set vars(typical_rc_n40css1p08,library_set)         N40CSS1P08
set vars(typical_rc_n40css1p08,cell_check_late)     N40CSS1P08
set vars(typical_rc_n40css1p08,cell_check_early)    N40CSS1P08


#######################################################################
# Define constraints modes ...
#-----------------------------------------------------------------
set vars(constraint_modes)                         func_mode
set vars(func_mode,pre_cts_sdc) "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/sdc/Top_Remcm_mini_sram_with_io_prects.sdc"
#set vars(func_mode,incr_cts_sdc) ""
set vars(func_mode,post_cts_sdc) "/home/Data1/Zhengpeng/work/Remcm_mini_sram3/DATA/sdc/Top_Remcm_mini_sram_with_io_postcts.sdc"
#set vars(func_mode,ilm_pre_cts_sdc) ""
#set vars(func_mode,ilm_incr_cts_sdc) ""
#set vars(func_mode,ilm_post_cts_sdc) ""


#######################################################################
# Define analysis views ...
#-----------------------------------------------------------------
set vars(default_hold_view)                  T_25TT_FUNC
set vars(default_setup_view)                 T_25TT_FUNC
set vars(hold_analysis_views)                "T_25TT_FUNC CB_25TT_FUNC RCB_25TT_FUNC RCB_N40FF_FUNC RCW_N40FF_FUNC CW_N40FF_FUNC CB_N40FF_FUNC T_N40FF_FUNC CB_N40SS_FUNC RCB_N40SS_FUNC"
set vars(T_25TT_FUNC,constraint_mode)        func_mode
set vars(T_25TT_FUNC,delay_corner)           typical_rc_25ctt1p2
set vars(CB_25TT_FUNC,constraint_mode)       func_mode
set vars(CB_25TT_FUNC,delay_corner)          cbestl_rc_25ctt1p2
set vars(RCB_25TT_FUNC,constraint_mode)      func_mode
set vars(RCB_25TT_FUNC,delay_corner)         rcbest_rc_25ctt1p2
set vars(RCB_N40FF_FUNC,constraint_mode)     func_mode
set vars(RCB_N40FF_FUNC,delay_corner)        rcbest_rc_n40cff1p32
set vars(RCW_N40FF_FUNC,constraint_mode)     func_mode
set vars(RCW_N40FF_FUNC,delay_corner)        rcworst_rc_n40cff1p32
set vars(CW_N40FF_FUNC,constraint_mode)      func_mode
set vars(CW_N40FF_FUNC,delay_corner)         cworst_rc_n40cff1p32
set vars(CB_N40FF_FUNC,constraint_mode)      func_mode
set vars(CB_N40FF_FUNC,delay_corner)         cbest_rc_n40cff1p32
set vars(T_N40FF_FUNC,constraint_mode)       func_mode
set vars(T_N40FF_FUNC,delay_corner)          typical_rc_n40cff1p32
set vars(CB_N40SS_FUNC,constraint_mode)      func_mode
set vars(CB_N40SS_FUNC,delay_corner)         cbest_rc_n40css1p08
set vars(RCB_N40SS_FUNC,constraint_mode)     func_mode
set vars(RCB_N40SS_FUNC,delay_corner)        rcbest_rc_n40css1p08
set vars(setup_analysis_views)               "T_25TT_FUNC CW_25TT_FUNC RCW_25TT_FUNC T_N40SS_FUNC RCW_N40SS_FUNC CW_N40SS_FUNC CB_N40SS_FUNC RCB_N40SS_FUNC"
set vars(CW_25TT_FUNC,constraint_mode)       func_mode
set vars(CW_25TT_FUNC,delay_corner)          cworst_rc_25ctt1p2
set vars(RCW_25TT_FUNC,constraint_mode)      func_mode
set vars(RCW_25TT_FUNC,delay_corner)         rcworst_rc_25ctt1p2
set vars(T_N40SS_FUNC,constraint_mode)       func_mode
set vars(T_N40SS_FUNC,delay_corner)          typical_rc_n40css1p08
set vars(RCW_N40SS_FUNC,constraint_mode)     func_mode
set vars(RCW_N40SS_FUNC,delay_corner)        rcworst_rc_n40css1p08
set vars(CW_N40SS_FUNC,constraint_mode)      func_mode
set vars(CW_N40SS_FUNC,delay_corner)         cworst_rc_n40css1p08
#set vars(active_hold_views)                  "T_25TT_FUNC CB_25TT_FUNC RCB_25TT_FUNC "
#set vars(active_setup_views)                 "T_25TT_FUNC CW_25TT_FUNC RCW_25TT_FUNC "
set vars(active_hold_views)                  "T_25TT_FUNC CB_25TT_FUNC RCB_25TT_FUNC RCB_N40FF_FUNC RCW_N40FF_FUNC CW_N40FF_FUNC CB_N40FF_FUNC T_N40FF_FUNC CB_N40SS_FUNC RCB_N40SS_FUNC"
set vars(active_setup_views)                 "T_25TT_FUNC CW_25TT_FUNC RCW_25TT_FUNC T_N40SS_FUNC RCW_N40SS_FUNC CW_N40SS_FUNC CB_N40SS_FUNC RCB_N40SS_FUNC"


#######################################################################
# Define power settings ...
#-----------------------------------------------------------------
set vars(power_analysis_view)                      T_25TT_FUNC
set vars(leakage_power_effort)                     none
set vars(dynamic_power_effort)                     none
set vars(activity_file)                            DATA/saif0310/Top_mini_sram_pad.saif
set vars(activity_file_format)                     SAIF
set vars(report_power)                             TRUE
#set vars(cpf_file)                                 ""
set vars(cpf_keep_rows)                            FALSE
set vars(cpf_power_domain)                         FALSE
set vars(cpf_power_switch)                         FALSE
set vars(cpf_isolation)                            FALSE
set vars(cpf_state_retention)                      FALSE
set vars(cpf_level_shifter)                        FALSE


#######################################################################
# Define tool specific options ...
#-----------------------------------------------------------------

set vars(max_route_layer)                          7
set vars(generate_tracks)                          TRUE
set vars(postroute_extraction_effort)              medium
set vars(multi_cut_effort)                         medium
set vars(litho_driven_routing)                     FALSE
set vars(postroute_spread_wires)                   FALSE

#set vars(delta_delay_threshold)                    ""
#set vars(celtic_settings)                          ""
#set vars(coupling_c_thresh)                        ""
#set vars(relative_c_thresh)                        ""
#set vars(total_c_thresh)                           ""
set vars(si_analysis_type)                         default
set vars(signoff_extraction_effort)                high
#set vars(antenna_diode)                            ""

set vars(metalfill)                                false
#set vars(metalfill_tcl)                            ""
#set vars(gds_files) ""
#set vars(qrc_layer_map) ""
#set vars(qrc_library) ""
#set vars(qrc_config_file) ""
#set vars(gds_layer_map)                            ""
#set vars(oa_abstract_name)                         ""
#set vars(oa_layout_name)                           ""
#set vars(oa_ref_lib)                               ""
#set vars(oa_design_lib)                            ""
#set vars(oa_design_cell)                           ""
#set vars(oa_design_view)                           ""

set vars(local_cpus)                               8
set vars(remote_hosts)                             0
set vars(cpu_per_remote_host)                      0
set vars(distribute)                               local
#set vars(custom,script) ""
#set vars(lsf,queue) ""
#set vars(lsf,resource) ""
#set vars(lsf,args) ""
#set vars(rsh,host_list) ""
#set vars(distribute_timeout)                       ""

