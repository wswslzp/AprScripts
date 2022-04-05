# set the metal filler blockage around the sram

set filler_blk_spacing 5

set sram_ptrs [dbget top.insts {.isHaloBlock==1}]
set mf_blk_box {}

proc list_sub_const {lista const_num} {
	set result {}
	foreach elema $lista {
		lappend result [expr $elema - $const_num]
	}
	return $result
}

proc list_add_const {lista const_num} {
	set result {}
	foreach elema $lista {
		lappend result [expr $elema + $const_num]
	}
	return $result
}

proc list2d_flatten {lista2d} {
	set result {}
	foreach lista1d $lista2d {
		foreach elema $lista1d {
			lappend result $elema
		}
	}
	return $result
}

foreach sram_ptr $sram_ptrs {
	set sram_boxll [lindex [dbget $sram_ptr.box_ll] 0]
	set sram_boxur [lindex [dbget $sram_ptr.box_ur] 0]
	set mf_blk_boxll [list_sub_const $sram_boxll $filler_blk_spacing]
	set mf_blk_boxur [list_add_const $sram_boxur $filler_blk_spacing]
	
	set mf_blk_box {}
	lappend mf_blk_box $mf_blk_boxll $mf_blk_boxur 
	set mf_blk_box [list2d_flatten $mf_blk_box]
	puts $mf_blk_box
	createRouteBlk -box $mf_blk_box -layer all -fills
}
