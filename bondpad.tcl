# for pad bonding

set pad_cell PADI
set pad_width 45
set pad_height 77
set pad_suffix _bondpad1
set pad_offset 22.6

proc get_pad_orient {io_ori} {
	if {$io_ori == "R0"} {
		set pad_ori R180
	} elseif {$io_ori == "R90"} {
		set pad_ori R270
	} elseif {$io_ori == "R180"} {
		set pad_ori R0
	} elseif {$io_ori == "R270"} {
		set pad_ori R90
	}
}

proc get_pad_location {io_box io_ori pad_width pad_height pad_offset} {
	set io_box_llx [lindex $io_box 0]
	set io_box_lly [lindex $io_box 1]
	set io_box_urx [lindex $io_box 2]
	set io_box_ury [lindex $io_box 3]
	
	if {$io_ori == "R0"} {
		set io_width [expr $io_box_urx - $io_box_llx]
		set io_height [expr $io_box_ury - $io_box_lly]
		set pad_ptx [expr $io_box_llx + ($io_width - $pad_width)/2]
		set pad_pty [expr $io_box_lly + $pad_offset]
	} elseif {$io_ori == "R90"} {
		set io_width [expr $io_box_ury - $io_box_lly]
		set io_height [expr $io_box_urx - $io_box_llx]
		set pad_ptx [expr $io_box_urx - $pad_height- $pad_offset]
		set pad_pty [expr $io_box_lly + ($io_width - $pad_width)/2]
	} elseif {$io_ori == "R180"} {
		set io_width [expr $io_box_urx - $io_box_llx]
		set io_height [expr $io_box_ury - $io_box_lly]
		set pad_ptx [expr $io_box_llx + ($io_width - $pad_width)/2]
		set pad_pty [expr $io_box_lly + $io_height - $pad_height - $pad_offset]
	} else {
		set io_width [expr $io_box_ury - $io_box_lly]
		set io_height [expr $io_box_urx - $io_box_llx]
		set pad_ptx [expr $io_box_llx + $pad_offset]
		set pad_pty [expr $io_box_lly + ($io_width - $pad_width)/2]
	}
	return "$pad_ptx $pad_pty"
}

set all_io {}
set data_io [dbget top.insts.name MDS*]
set pwr_io [dbget top.insts.name *VCCK*]
set gnd_io [dbget top.insts.name *GNDK*]

lappend all_io $data_io $pwr_io $gnd_io

foreach io_type $all_io {
	foreach io_inst $io_type {
		set io_ptr [dbget top.insts.name $io_inst -p]
		set io_orient [dbget $io_ptr.orient]
		set io_loc [lindex [dbget $io_ptr.box] 0]

		addInst -cell $pad_cell -inst ${io_inst}${pad_suffix}
		set pad_loc [get_pad_location $io_loc $io_orient $pad_width $pad_height $pad_offset] 
		set pad_ori [get_pad_orient $io_orient ]
		placeInstance ${io_inst}${pad_suffix} $pad_loc $pad_ori
		
	}
}
