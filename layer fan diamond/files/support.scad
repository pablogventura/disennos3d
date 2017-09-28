module support() {
	rotate([0, 0, +mount_screw_base_angle/2-7]) multi_thin_wall(3,4,[20,50,50]);
	rotate([0, 0, +mount_screw_base_angle/2-7]) multi_thin_wall(3,4,15,30);
	rotate([0, 0, -mount_screw_base_angle/2+2]) multi_thin_wall(2,4,40);
	
	module multi_thin_wall(n=1, sp=1, h=30, l=20) {
		translate([0,-(n-1)*sp/2,0]) {
			for (i=[0:n-1]) {
				hh = len(h)>0 ? h[i] : h;
				translate([0, i*sp, 0]) thin_wall(l, hh);
			}
		}
	}
	module thin_wall(l,h) {
		translate([18, -0.15, shroud_z0]) cube([l, 0.3, h]);
	}
}
