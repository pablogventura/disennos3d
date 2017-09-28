// shroud.scad
// shroud drawings referenced tothe nozzle

// Offset makes the shape larger to the sides and bottom
// Top is not affected
module shroud_hull(off=0) {
	rotate_extrude() hull() {
		// Top and center of the profile
		polygon([
			[0,               shroud_z0 - off],
			[0,               shroud_z0+shroud_h],
			[shroud_d1/2+off, shroud_z0+shroud_h]
		]);
		translate([shroud_d0/2-shroud_br, shroud_z0+shroud_br])
			circle(r=shroud_br+off);
	}
}

module shroud_hole() {
	shroud_hull(-wall_thin);
	cylinder(d=shroud_nozzle_d, h=shroud_h);
}
