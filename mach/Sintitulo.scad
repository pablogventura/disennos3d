use <parametric_involute_gear_v5.0.scad>

module motor(){
cylinder(r=36/2,h=57);
translate([0,0,-(65-57)/2])cylinder(r=13/2,h=66);
translate([0,0,-(85-57)/2-2])cylinder(r=3.5/2,h=85,$fn=16);
translate([14.5,0,-7])scale([0.3,1,1])cylinder(r=4.5/2,h=8);
translate([-14.5,0,-7])scale([0.3,1,1])cylinder(r=4.5/2,h=8);
}

module double_helix_gear (teeth)
{   
    circles=0;
	//double helical gear
    translate([0,0,10])
	{
		twist=50;
		height=20;
		pressure_angle=30;

		gear (number_of_teeth=teeth,
			circular_pitch=700,
			pressure_angle=pressure_angle,
			clearance = 0.2,
			gear_thickness = height/2,
			rim_thickness = height/2,
			rim_width = 6,
			hub_thickness = height/2,
			hub_diameter=15,
			bore_diameter=3.2,
			circles=circles,
			twist=twist/teeth);
		mirror([0,0,1])
		gear (number_of_teeth=teeth,
			circular_pitch=700,
			pressure_angle=pressure_angle,
			clearance = 0.2,
			gear_thickness = height/2,
			rim_thickness = height/2,
			rim_width = 5,
			hub_thickness = height/2,
			hub_diameter=15,
			bore_diameter=3.2,
			circles=circles,
			twist=twist/teeth);
	}
}


translate([-180,-50/2,-11])cube([300,50,10]);
translate([87,0,-62])motor();
#translate([-190,-8,20])cube([150,16,10]);

double_helix_gear(36);
translate([87,0,0])rotate([0,0,32])double_helix_gear(8);
translate([-50,0,0])cylinder(r=8/2,h=30);
