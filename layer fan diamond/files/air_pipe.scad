// air_pipe.scad
include <air_pipe_path.scad>

module air_pipe_hull() {
	air_pipe_hole(true);
}

module air_pipe_hole(hull=false) {
	az = mount_screw_base_angle/2-7; // DAMN, fine tune...
	d = hull ? air_pipe_od : air_pipe_id;
	
	// Creates a hose following the path
	rotate([90, 0, az]) for(i = [0:len(air_pipe_path)-2]) {
		hull() {
			translate(air_pipe_path[i  ]) sphere(d=d);
			translate(air_pipe_path[i+1]) sphere(d=d);
		}
	}
	
	// Hose-to-fan coupler
	hull() {
		rotate([90, 0, az]) translate(air_pipe_path[0]) sphere(d=d);
		multmatrix(tm_bottom_right_screw) fan_exaust();
	}
	
	// Fan exaust, referenced at bottom mount screw, back of the fan.
	module fan_exaust() {
		if (!hull) {
			translate([fan_offset, -fan_exaust_l/2 +fan_exaust_dy, fan_exaust_dz])
			cube([fan_exaust_w, fan_exaust_l, 100]);
		} else {
			translate([fan_offset-wall_thin, -fan_exaust_l/2 +fan_exaust_dy-wall_thin, fan_exaust_dz])
			cube([fan_exaust_w + 2*wall_thin, fan_exaust_l + 2*wall_thin, fan_exaust_h]);
		}
	}
}
