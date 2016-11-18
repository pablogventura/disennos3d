mirror([0,1,0]){
	import("Z_Endstop_repaired.stl", convexity=3);
	translate([11,2,0])cube([23,8,13]);
}
difference(){
hull(){
	translate([-5,-2.7-11,0]) cube([35+5,3,13]);
	translate([-5,-13.7+3,3]) rotate([0,-90,0])cylinder(r1=3/2,r2=3,h=35);
}
	translate([-5,-13.7+3,3]) rotate([0,-90,0])cylinder(r=2/2,h=45);
}