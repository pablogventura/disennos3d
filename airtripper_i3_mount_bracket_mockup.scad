// i3 top mount bracket for Airtripper bowden extruder 
// Mark Benson 2015 CCNC

rotate([0,0,0])
union()
{

	difference()
	{

	//tab
    union(){
	translate([25,25/2+3,0]) #cube([17,3,17]);
    translate([25,25/2-3-3,0]) #cube([17,3,17]);
    }
	
	//Hole in tab
	rotate([90,0,0]) translate([25+10.5,(5+(7/2)),-20])  #cylinder(r=(3.5/2), h=20, $fn=25);
	
	}

	//plate mount
	difference()
	{
		cube([25,25,17]);
		translate([0,0,5]) #cube([20,25,7]);
	}

	//strengthening rib
	translate([25,0,14]) linear_extrude(height = 3) polygon(points=[[0,0],[17,25/2-3-3],[17,25/2+3+3],[0,25]]);
}