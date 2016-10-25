

difference(){
hull(){
cylinder(r=20,h=0.1);
translate([20,0,2])rotate([0,25,0])translate([-20,0,0])cylinder(r=20,h=0.1);
}
hull(){
translate([0,0,-1])cylinder(r=18,h=0.1);
translate([20,0,3])rotate([0,25,0])translate([-20,0,0])cylinder(r1=18,r2=18,h=0.1);
}
}

difference(){
translate([-20,-20,0])cube([40,40,1]);
translate([0,0,-30])cylinder(r=18,h=800);
translate([32/2,32/2,-2])cylinder(r=4.3/2,h=10);
translate([32/2,-32/2,-2])cylinder(r=4.3/2,h=10);
translate([-32/2,32/2,-2])cylinder(r=4.3/2,h=10);
translate([-32/2,-32/2,-2])cylinder(r=4.3/2,h=10);
}

difference(){
translate([-18,-20,1.4]) rotate([0,180+45,0])cube([10,40,2],center=false);
translate([-29,0,0])
hull(){
	translate([0,24/2,0])rotate([0,45,0]) cylinder(r=5/2,h=10);
	translate([0,-24/2,0])rotate([0,45,0]) cylinder(r=5/2,h=10);
}
}