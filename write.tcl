# write netlist
saveNetlist -phys -excludeCellInst {FILLER1I FILLER05I FILLER0005I FILLER1AR9 FILLER2AR9 FILLER3AR9 FILLER4AR9 FILLER8AR9 FILLER16AR9 FILLER32AR9 TAP01CR9 PADI MCORNERI} LVS/remcm_pgpad.v  -excludeTopCellPGPort POC
#saveNetlist -phys -excludeCellInst {FILLER1I FILLER05I FILLER0005I FILLER1AR9 FILLER2AR9 FILLER3AR9 FILLER4AR9 FILLER8AR9 FILLER16AR9 FILLER32AR9 TAP01CR9 PADI MCORNERI} LVS/remcm_pgpad.v 

# write out the sdf 
#write_sdf -typ_view T_25TT_FUNC -max_view RCW_N40SS_FUNC -min_view RCB_N40FF_FUNC remcm_sram.sdf
