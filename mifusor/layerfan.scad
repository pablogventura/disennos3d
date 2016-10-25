difference(){
translate([-128.6-41/2,36.1+41/2,0]) import("originals/fan_support.stl", convexity=3);
cube([80,80,6.5],center=true);
translate([18,18,5]) rotate([0,0,45])cube([10,10,6.5],center=true);
translate([18,-18,5]) rotate([0,0,45])cube([10,10,6.5],center=true);
translate([-18,18,5]) rotate([0,0,45])cube([10,10,6.5],center=true);
translate([-18,-18,5]) rotate([0,0,45])cube([10,10,6.5],center=true);
translate([29,0,0])cube([20,80,30],center=true);
}

translate([0,0,3.5]){
	rotate([180,0,0])difference(){
		cylinder(20,    20,    20, center=false);
		cylinder(20,    18,    18, center=false);
	}
}
translate([0,0,-17])
difference(){
	translate([-128.6-41/2,36.1+41/2,0]) import("originals/fan_support.stl", convexity=3);
	cylinder(50,    20,    20, center=false);
	difference(){
		translate([6,-25,0])rotate([0,-45,0]) cube([50,50,50]);
		translate([-25,-26,-6])cube([55,55,10]);
	}
}