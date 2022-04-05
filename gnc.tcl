#addNet -physical POC 
setNet -net POC -type special
dbSetIsNetGnd POC
clearGlobalNets
globalNetConnect CORE_VCCK -type pgpin -pin VCCK -inst *
globalNetConnect CORE_VCCK -type tiehi -pin VCCK -inst *
globalNetConnect CORE_VCCK -type pgpin -pin VDD -inst MDS*
globalNetConnect CORE_VCCK -type pgpin -pin VDD -inst CORE_VCCK*
globalNetConnect CORE_VCCK -type pgpin -pin VDD -inst M_psum_sram_Gosram* -module Top_Remcm_mini_sram_inst/M_psumadary
globalNetConnect CORE_VCCK -type pgpin -pin VDD -inst MWRAM_* -module Top_Remcm_mini_sram_inst
globalNetConnect CORE_VCCK -type pgpin -pin VDD -inst MXRAM_* -module Top_Remcm_mini_sram_inst
globalNetConnect CORE_GNDK -type pgpin -pin GNDK -inst *
globalNetConnect CORE_GNDK -type tielo -pin GNDK -inst *
globalNetConnect CORE_GNDK -type pgpin -pin VSS -inst MDS*
globalNetConnect CORE_GNDK -type pgpin -pin VSS -inst CORE_GNDK*
globalNetConnect CORE_GNDK -type pgpin -pin VSS -inst M_psum_sram_Gosram* -module Top_Remcm_mini_sram_inst/M_psumadary
globalNetConnect CORE_GNDK -type pgpin -pin VSS -inst MWRAM_* -module Top_Remcm_mini_sram_inst
globalNetConnect CORE_GNDK -type pgpin -pin VSS -inst MXRAM_* -module Top_Remcm_mini_sram_inst
globalNetConnect IO_VCCK -type pgpin -pin VDDIO -inst IO_VCCK*
globalNetConnect IO_GNDK -type pgpin -pin VSSIO -inst IO_GNDK*
globalNetConnect IO_VCCK -type pgpin -pin VDDIO -inst MDS*
globalNetConnect IO_GNDK -type pgpin -pin VSSIO -inst MDS*
globalNetConnect POC -type pgpin -pin POC -inst MDS*
applyGlobalNet
