$fn=16;
mirror([0,1,0]){
	import("Z_Endstop_repaired.stl", convexity=3);
	translate([11,2,0])cube([23,8,13]);
}
difference(){
hull(){
	translate([-5,-2.7-11,0]) cube([35+5,3,13]);
	translate([-50,-2.7-11+3,0]) rotate([0,0,0])cylinder(r=4,h=13);
}
translate([-50,-2.7-11+3,-2]) rotate([0,0,0])cylinder(r=3/2,h=20);
}