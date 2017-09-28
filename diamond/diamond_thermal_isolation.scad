diamond_upper_angle		= 118;
diamond_diameter_real	= 26.72;
diamond_heater_size		= 6;
diamond_heatbreak_pos	= 2.79;
diamond_heatbreak_size	= 3;
diamond_thermistor_pos	= 3.29;
diamond_thermistor_size	= 2;

diamond_diameter_extra	= 20;

$fn=50;
angled_factor = cos(diamond_upper_angle-90);


projection(cut = true)
difference()
{
	union() {
		cylinder(r=(diamond_diameter_real+diamond_diameter_extra)/angled_factor/2, h=1, center=true);
	}
	
	union() {
		//heater
		cylinder(r=diamond_heater_size/angled_factor/2, h=2, center=true);
		
		//heatbreaks
		for(i=[-1, 0, 1]) {
			rotate([0, 0, i*120])
			translate([diamond_diameter_real/angled_factor/2-diamond_heatbreak_pos/angled_factor, 0, 0])
			union() {
				cylinder(r=diamond_heatbreak_size/2, h=2, center=true);
				
				cube([3*diamond_heatbreak_size, 0.01, 2], center=true);
			}
		}
		
		//thermistor
		rotate([0, 0, 180])
		translate([diamond_diameter_real/angled_factor/2-diamond_thermistor_pos/angled_factor, 0, 0])
		union() {
			cylinder(r=diamond_thermistor_size/2, h=2, center=true);
			
			cube([3*diamond_thermistor_size, 0.01, 2], center=true);
		}
	}
}
