difference(){
hull(){
	translate([0,60,0])cube([50,0.1,100]);
	translate([5/2,0,0])cube([45,0.1,100]);
}

translate([45/2+5/2,0,-1])cylinder(r=45/2,h=102);
translate([10/2,24,10/2])cube([40,200,90]);
translate([-2,20,5])cube([100,3,10]);
translate([-2,20,100-10-5])cube([100,3,10]);

rotate([45,0,0])translate([25-10/2,50*2,20])cube([10,3,100]);
rotate([-45,0,0])translate([25-10/2,25+5,-20])cube([10,3,100]);
}