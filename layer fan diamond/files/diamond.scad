// Diamond.scad

// Base section of the diamond hotend (brass part).
// grow affects only diameter.
module diamond(grow=0) {
	rotate_extrude() polygon([
		[0,                       0                            ],
		[diamond_nozzle_d/2+grow, 0                            ],
		[diamond_wide_d/2+grow,   diamond_cone_h               ],
		[diamond_wide_d/2+grow,   diamond_cone_h+diamond_wide_h],
		[0,                       diamond_cone_h+diamond_wide_h]
	]);
}
