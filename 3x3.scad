module algebra(){
translate([0,0,0]) sphere(r=7);
translate([0,0,40]) sphere(r=7);
translate([0,40,0]) sphere(r=7);
translate([0,40,40]) sphere(r=7);
translate([40,0,0]) sphere(r=7);
translate([40,0,40]) sphere(r=7);
translate([40,40,0]) sphere(r=7);
translate([40,40,40]) sphere(r=7);

translate([0,0,0]) cylinder(h = 40, r = 3, center = false);
translate([0,40,0]) cylinder(h = 40, r = 3, center = false);
translate([40,0,0]) cylinder(h = 40, r = 3, center = false);
translate([40,40,0]) cylinder(h = 40, r = 3, center = false);


translate([0,0,0]) rotate([0,90,0]) cylinder(h = 40, r = 3, center = false);
translate([0,40,0]) rotate([0,90,0]) cylinder(h = 40, r = 3, center = false);
translate([0,0,40]) rotate([0,90,0]) cylinder(h = 40, r = 3, center = false);
translate([0,40,40])rotate([0,90,0])  cylinder(h = 40, r = 3, center = false);

translate([0,0,0]) rotate([-90,0,0]) cylinder(h = 40, r = 3, center = false);
translate([40,0,0]) rotate([-90,0,0]) cylinder(h = 40, r = 3, center = false);
translate([0,0,40]) rotate([-90,0,0]) cylinder(h = 40, r = 3, center = false);
translate([40,0,40])rotate([-90,0,0])  cylinder(h = 40, r = 3, center = false);
}

translate([0,0,30])rotate([45,-35,-30]) algebra();
cylinder(h = 30, $fn=16, r1 = 2, r2 = 2, center = false);
//cylinder(h = 3,  r1 = 50, r2 = 50, center = false);

//translate([0,-40,8]) rotate([-45,0,0])cube([10,2,10], center=true);
//translate([0,0,-20]) linear_extrude(height = 100, center = true, convexity = 10, twist = 0) text("hola");
//text("LIBRARY", size=1.5);