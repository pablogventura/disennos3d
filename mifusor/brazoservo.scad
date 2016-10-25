difference(){
	hull(){
		translate([-40+16/2,0,-4])cylinder(r=10/2,h=4, center=false);
		translate([40-7.5/2,0,0])cube([7.5+2,13.5+2,6.5+2],center=true);
	}
translate([0,0,2])
hull(){
	translate([-40+16/2,0,0])cylinder(r=6.5/2,h=5,center=true);
	translate([-0,0,0])cylinder(r=4.5/2,h=5,center=true);
}
translate([-40+16/2,0,0])cylinder(r=6.5/2,h=10,center=true);
hull(){
translate([40-7.5/2,0,0])cube([12,13.5,6.5],center=true);
translate([20,0,5])cube([0.1,10,6.5],center=true);
}
}
