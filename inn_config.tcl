#######################################################################
# Define innovus configure settings ...
#-----------------------------------------------------------------
#set vars(buffer_tie_assign)                        ""
#set vars(delay_cells)                              ""
#set vars(cts_cell_list)                            ""
#set vars(clock_gate_cells)                         ""
#set vars(spare_cells)                              ""
#set vars(verify_litho)                             ""
#set vars(lpa_tech_file)                            ""
#set vars(acceptable_wns)                           ""
#set vars(report_run_time)                          ""
#set vars(final_always_source_tcl)                  ""
#set vars(pre_pin_assign_tcl)                       ""
#set vars(post_pin_assign_tcl)                      ""
#set vars(pre_partition_tcl)                        ""
#set vars(post_partition_tcl)                       ""
#set vars(pre_assemble_tcl)                         ""
#set vars(post_assemble_tcl)                        ""
#set vars(pre_signoff_tcl)                          ""
#set vars(post_signoff_tcl)                         ""
#set vars(abort)                                    ""
#set vars(catch_errors)                             ""
#set vars(save_on_catch)                            ""
#set vars(mail,to)                                  ""
#set vars(mail,steps)                               ""
#set vars(tags,verbose)                             ""
#set vars(tags,verbosity_level)                     ""

set vars(clock_gate_aware)                         FALSE
set vars(clock_gate_clone)                         FALSE
set vars(useful_skew)                              FALSE
set vars(skew_buffers)                             "DELAY2N0X2CR9 DELAY1N5X2CR9 DELAY1N0X2CR9 DELAY0N7X2CR9 DELAY0N5X2CR9 DELAY0N2X2CR9 DELAY0N1X2CR9 DEL2N0X1CR9 DEL1N5X1CR9 DEL1N0X1CR9 DEL0N8X1CR9 DEL0N5X1CR9 DEL0N3X1CR9 DEL0N2X1CR9 DEL0N1X1CR9 DEL0N07X1CR9 CLKBUFX8AR9 CLKBUFX6AR9 CLKBUFX4AR9 CLKBUFX3AR9 CLKBUFX2AR9 CLKBUFX1AR9 CLKBUFX16AR9 CLKBUFX12AR9 BUFX8AR9 BUFX6AR9 BUFX4AR9 BUFX3AR9 BUFX2AR9 BUFX1AR9 BUFX16AR9 BUFX12AR9 BUFX05AR9 INVX8AR9 INVX6AR9 INVX4AR9 INVX3AR9 INVX2AR9 INVX1AR9 INVX16AR9 INVX12AR9 INVX05AR9 CLKINVX8AR9 CLKINVX6AR9 CLKINVX4AR9 CLKINVX3AR9 CLKINVX2AR9 CLKINVX1AR9 CLKINVX16AR9 CLKINVX12AR9"
#set vars(critical_range)                           ""
set vars(preserve_assertions)                      FALSE
set vars(fix_hold)                                 TRUE
set vars(fix_hold_ignore_ios)                      FALSE
set vars(fix_hold_allow_tns_degradation)           TRUE
set vars(resize_shifter_and_iso_insts)             FALSE
set vars(assign_buffer)                            FALSE
set vars(high_timing_effort)                       TRUE
#set vars(dont_use_list)                            ""
#set vars(use_list)                                 ""

set vars(route_clock_nets)                         TRUE
set vars(clock_eco)                                none

set vars(no_pre_place_opt)                         FALSE
set vars(in_place_opt)                             TRUE
set vars(place_io_pins)                            FALSE
set vars(tie_cells)                                "TIE0X4CR9 TIE1X4CR9"
set vars(filler_cells)                             "FILLER16AR9 FILLER1AR9 FILLER2AR9 FILLER32AR9 FILLER3AR9 FILLER4AR9 FILLER8AR9"
set vars(welltaps)                                 TAP01CR9
#set vars(itag_cells)                               ""
#set vars(itag_rows)                                ""
set vars(congestion_effort)                        medium
set vars(welltaps,checkerboard)                    FALSE
#set vars(welltaps,verify_rule)                     ""
set vars(pre_endcap)                               "FILLERC16CR9 "
set vars(post_endcap)                              "FILLERC16CR9 "
#set vars(welltaps,max_gap)                         ""
set vars(welltaps,cell_interval)                   100


#######################################################################
# Define user plug-ins scripts ...
#-----------------------------------------------------------------
#set vars(always_source_tcl)                        ""
#set vars(pre_init_tcl)                             ""
#set vars(post_init_tcl)                            ""
#set vars(pre_place_tcl)                            ""
#set vars(place_tcl)                                ""
#set vars(post_place_tcl)                           ""
#set vars(pre_prects_tcl)                           ""
#set vars(post_prects_tcl)                          ""
set vars(pre_cts_tcl)                              cts.tcl
#set vars(cts_tcl)                                  ""
#set vars(post_cts_tcl)                             ""
#set vars(pre_postcts_tcl)                          ""
#set vars(post_postcts_tcl)                         ""
#set vars(pre_postcts_hold_tcl)                     ""
#set vars(post_postcts_hold_tcl)                    ""
#set vars(pre_route_tcl)                            ""
#set vars(post_route_tcl)                           ""
#set vars(pre_postroute_tcl)                        ""
#set vars(post_postroute_tcl)                       ""
#set vars(pre_postroute_hold_tcl)                   ""
#set vars(post_postroute_hold_tcl)                  ""
#set vars(pre_postroute_si_hold_tcl)                ""
#set vars(post_postroute_si_hold_tcl)               ""
#set vars(pre_postroute_si_tcl)                     ""
#set vars(post_postroute_si_tcl)                    ""
#set vars(pre_signoff_tcl)                          ""
set vars(post_signoff_tcl)                         mf.tcl

