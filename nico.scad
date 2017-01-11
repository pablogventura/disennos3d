difference(){
	cylinder(r=4,h=12,$fn=24);
	translate([0,0,-2])cylinder(r=1.5,h=15,$fn=24);
}
translate([-29,0,6-0.7])
difference(){
	cylinder(r=3,h=6,$fn=24);
	translate([0,0,-2])cylinder(r=1.5,h=15,$fn=24);
}

translate([0,6,6])rotate([90,0,0])cylinder(r=18/2,h=6);