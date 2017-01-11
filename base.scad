difference(){
union(){
difference(){
union(){
rotate_extrude(convexity = 10, $fn = 100)translate([45-7, 0, 0])circle(r = 7, $fn = 100);
translate([0,0,0])cylinder(r = 45-5,h=2+6, $fn = 100);
}
translate([0,0,-10])cylinder(r = 45,h=10, $fn = 100);

}

translate([0,0,-2])cylinder(r = 45+2,h=2, $fn = 100);
}
translate([0,0,-5])cylinder(h = 30, $fn=16, r1 = 2.5, r2 = 2.5, center = false);
}


hull(){
translate([25,-11,18])rotate([0,65,0])cube([12,22,2]);
translate([25,-11,5])cube([6,22,2]);
}