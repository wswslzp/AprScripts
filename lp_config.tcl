#######################################################################
# Define low power settings ...
#-----------------------------------------------------------------
#set vars(<power_domain>,tie_cells)                 ""
#set vars(<power_domain>,filler_cells)              ""
#set vars(<power_domain>,welltaps)                  ""
#set vars(<power_domain>,welltaps,checkerboard)     ""
#set vars(<power_domain>,welltaps,max_gap)          ""
#set vars(<power_domain>,welltaps,cell_interval)    ""
#set vars(<power_domain>,welltaps,row_offset)       ""
#set vars(<power_domain>,welltaps,verify_rule)      ""
#set vars(<power_domain>,welltaps,pre_endcap)       ""
#set vars(<power_domain>,welltaps,post_endcap)      ""

#set vars(always_on_buffers)                        ""
#set vars(always_on_nets)                           ""
#set vars(always_on_nets,max_fanout)                ""
#set vars(always_on_nets,max_tran)                  ""
#set vars(always_on_nets,max_skew)                  ""
#set vars(always_on_nets,max_delay)                 ""
#set vars(<power_domain>,always_on_buffers)         ""

#set vars(route_secondary_pg_nets)                  ""
#set vars(secondary_pg,cell_pin_pairs)              ""
#set vars(secondary_pg,max_fanout)                  ""
#set vars(secondary_pg,pattern)                     ""
#set vars(secondary_pg,non_default_rule)            ""
#set vars(secondary_pg,nets)                        ""
#set vars(<p/g_net>,max_fanout)                     ""
#set vars(<p/g_net>,pattern)                        ""
#set vars(<p/g_net>,non_default_rule)               ""

#set vars(clp_options)                              ""
#set vars(<power_domain>,bbox)                      ""
#set vars(<power_domain>,rs_exts)                   ""
#set vars(<power_domain>,min_gaps)                  ""
#set vars(<power_domain>,switchable)                ""
#set vars(<power_domain>,switch_type)               ""
#set vars(<power_domain>,switch_cell)               ""

#set vars(<power_domain>,input_enable_pin)          ""
#set vars(<power_domain>,output_enable_pin)         ""
#set vars(<power_domain>,input_enable_net)          ""
#set vars(<power_domain>,output_enable_net)         ""

#set vars(<power_domain>,switch_instance)           ""
#set vars(<power_domain>,top_offset)                ""
#set vars(<power_domain>,bottom_offset)             ""
#set vars(<power_domain>,right_offset)              ""
#set vars(<power_domain>,left_offset)               ""
#set vars(<power_domain>,checker_board)             ""
#set vars(<power_domain>,horizonal_pitch)           ""
#set vars(<power_domain>,column_height)             ""
#set vars(<power_domain>,skip_rows)                 ""
#set vars(<power_domain>,back_to_back_chain)        ""

#set vars(<power_domain>,top_ring)                  ""
#set vars(<power_domain>,bottom_ring)               ""
#set vars(<power_domain>,right_ring)                ""
#set vars(<power_domain>,left_ring)                 ""

#set vars(<power_domain>,top_switch_cell)           ""
#set vars(<power_domain>,bottom_switch_cell)        ""
#set vars(<power_domain>,left_switch_cell)          ""
#set vars(<power_domain>,right_switch_cell)         ""

#set vars(<power_domain>,top_filler_cell)           ""
#set vars(<power_domain>,bottom_filler_cell)        ""
#set vars(<power_domain>,left_filler_cell)          ""
#set vars(<power_domain>,right_filler_cell)         ""

#set vars(<power_domain>,corner_cell_list)          ""

#set vars(<power_domain>,top_switches)              ""
#set vars(<power_domain>,bottom_switches)           ""
#set vars(<power_domain>,left_switches)             ""
#set vars(<power_domain>,right_switches)            ""
