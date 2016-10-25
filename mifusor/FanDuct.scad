
//-- Blower (centrifugal) fan duct for the Direct Drive
//-- Extruder by Marty Rice.
//-- AndrewBCN - Barcelona, November 2014
//-- GPLV3

//-- based on source code by Robert Quattlebaum (darco)
//-- Thingiverse #387301

//-- uses a 5015S 12V blower (centrifugal) fan

$fs=0.1;

module FanDuct() {
	tol=0.10;
	wallThickness=1.3; // tested with 1.3mm, but original value was 0.8mm and should work too

	module Shape(dia) {

		hull() {
			translate([0,0,-0]) cube([50+dia*3,50+dia*2,3],center=true);
			translate([0,0,20]) cube([40+dia*2,40+dia*2,3],center=true);
		}
		hull() {
			translate([0,0,20]) cube([40+dia*2,40+dia*2,3],center=true);
			translate([12.5,0,42]) rotate([30,0,90]) scale([1,0.8,1]) cylinder(r=10+dia*1.5,h=0.1);
		}
		difference(){
		hull() {
			translate([12.5,0,42]) rotate([30,0,90]) scale([1,0.8,1]) cylinder(r=10+dia*1.5,h=0.1);
			translate([23,0,53]) rotate([0,0,90]) scale([1,0.5,1]) cylinder(r=3.5+dia*1.5,h=0.1);
		}
		translate([22,0,56]) rotate([0,90+60,0]) cylinder(r=5+dia,h=20);
		}
	}

	difference() {
		Shape(dia=wallThickness+tol);
		Shape(dia=tol);

	}
}


FanDuct();