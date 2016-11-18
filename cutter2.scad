$fn = 64;

union(){
difference(){
translate([0,0,-7-20])cylinder(r=8/2,h=8+7+20);
translate([0,-5,-7-20-1])cube([20,20,28]);
}
rotate([5,0,0])translate([-0.1,-2.5,-7])rotate([0,90,0])enganche();
}

module enganche(){
module traba(){
cube([10.5,2.8,0.1]);
translate([10.5,0.5,0]){
	cube([5.1,1.8,0.1]);
	translate([5.1,0.5,0]) cube([2.4,0.8,0.1]);
}
}
hull(){
translate([-1.5,-0.13,2])scale([1.1,0.8,1])traba();
scale([0.9,0.7,1])traba();
}
}