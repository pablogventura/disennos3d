difference(){
	hull(){
		cylinder(r=15/2,h=7);
		translate([-110,0,0])cylinder(r=20/2,h=7);
		translate([-110-40+10-30,-20,0])cylinder(r=20/2,h=7);
	}
	translate([0,0,-1])
	rotate([0,0,18])
	hull(){
		cylinder(r=7.5/2,h=10);
		translate([20,0,0])cylinder(r=5/2,h=10);
	}
	
	translate([-40-110-10-15-5,-6/2-20-5,-1])rotate([0,0,18])cube([40,6,10]);
	
	



	translate([-125-40-10,0,7/2])rotate([90,0,18])cylinder(r=3/2,h=40);
	translate([-125-40+10,0,7/2])rotate([90,0,18])cylinder(r=3/2,h=40);
}