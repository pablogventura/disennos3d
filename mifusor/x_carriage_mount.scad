

difference(){
	union(){
		import("originals/squaremountV2.stl", convexity=3);
		difference(){
			translate([0,0,15])import("originals/squaremountV2.stl", convexity=3);
			translate([0,12,0])cube([40,40,40]);
// comment next line to e3d v6
translate([36/2,0,30]) rotate([-90,0,0]) cylinder($fn=16,h = 4.1, r1 = 8, r2 = 8, center = false);
		}
		translate([7,0,0]) cube([20,12,15]);
		translate([0,0,0]) cube([36,12,15]);
	}

	translate([6,-1,22]) rotate([-90,0,0])cylinder($fn=16,h = 20, r1 = 1.7, r2 = 1.7, center = false);
	translate([6+24,-1,22]) rotate([-90,0,0])cylinder($fn=16,h = 20, r1 = 1.7, r2 = 1.7, center = false);
	difference(){
		translate([18,7-0.2,20+5]) cube([40,4.5,30],center=true);
		translate([36/2,5,10])cube([12,20,40],center=true);
	}
}






