

module traba(){
	difference(){
		translate ([6.2,0,-3])rotate([0,-20,0])cube([6,17,20]);	
		translate ([-5,-2,14]) cube([20,20,20]);
		translate ([-5,-2,-21]) cube([20,20,20]);
	}
}

cylinder(h = 2, r1 = 60, r2 = 60, center = false);
translate([0,-17/2,2]){
translate ([31/2,0,0]) traba();
translate ([-31/2,0,0]) mirror([1,0,0]) traba();
}