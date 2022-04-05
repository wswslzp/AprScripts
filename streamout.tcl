# write out the gdsii
streamOut GDS/remcm_sram3_beforedrc_0319.gds -mapFile soce.map -libName Top_remcm_sram_lib -structureName Top_Remcm_mini_sram_withio -merge { DATA/gds/gds/M31GPSC900HL055PR.gds DATA/gds/gds.1p6m_501/M31GPIO1225HL055P.gds DATA/Raochl_memory/asdrlspkb1p64x8cm2sw0/asdrlspkb1p64x8cm2sw0.gds DATA/Raochl_memory/asdrlspkb1p128x8cm4sw0/asdrlspkb1p128x8cm4sw0.gds DATA/Raochl_memory/sadslspkb2p128x42m4b2w0cp0d0t0/sadslspkb2p128x42m4b2w0cp0d0t0.gds } -units 1000 -mode ALL

