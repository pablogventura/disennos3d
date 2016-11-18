difference(){
union(){
translate([0,39,10])rotate([100,0,90])cylinder(r=2/2,h=30);
translate([0,40,10])rotate([90,0,0])cylinder(r=10/2,h=40);
hull(){
translate([0,0,5+2])
union(){
	cylinder(r=10/2,h=0.1);
	translate([35-10,0,0]) cylinder(r=10/2,h=0.1);
}
translate([0,0,5+2+5])
union(){
	cylinder(r=10/2,h=0.1);
	translate([5cuil,0,0]) cylinder(r=10/2,h=0.1);
}
}

hull(){
translate([0,0,5])
union(){
	cylinder(r=10/2,h=0.1);
	translate([35-10,0,0]) cylinder(r=10/2,h=0.1);
}
translate([0,0,5+2])
union(){
	cylinder(r=10/2,h=0.1);
	translate([35-10,0,0]) cylinder(r=10/2,h=0.1);
}
}

difference(){
hull(){
translate([0,0,5])
union(){
	cylinder(r=10/2,h=0.1);
	translate([35-10,0,0]) cylinder(r=10/2,h=0.1);
}

union(){
	cylinder(r=8/2,h=0.1);
	translate([33-8,0,0]) cylinder(r=8/2,h=0.1);
}
}

translate([25/2,10,-11])rotate([90,0,0])cylinder(r=30/2,h=30);
}
}
translate([-10,-10,12.7]) rotate([0,10,0])cube([60,60,60]);
}