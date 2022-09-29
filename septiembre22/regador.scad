//el tubo es 9 exterior y 6 interior

//un litro es 10cm x 10cm x 10cm
difference(){
translate([0,0,-3.5/2])
linear_extrude(110+3,center=true)
offset(6)
square([100*2,100*1.5],center=true);
cube([100*2,100*1.5,110],center=true);
    echo((100*2*100*1.5*110)/1000);
}
translate([0,80,40])
rotate([90,0,0]){
rotate_extrude(angle=180,convexity = 10, $fn = 100)
translate([8, 0, 0])
circle(d = 8, $fn = 100);
translate([8,0,0])
rotate([90,0,0])
cylinder(d=8,h=90,$fn=100);
translate([-8,0,0])
rotate([90,0,0])
cylinder(d=8,h=90,$fn=100);
}
translate([8+8,0,0])
rotate([0,90,90])
rotate_extrude(angle=90,convexity = 10, $fn = 100)
translate([8, 0, 0])
circle(d = 8, $fn = 100);

translate([-8-8,0,0])
rotate([0,90,90*3])
rotate_extrude(angle=90,convexity = 10, $fn = 100)
translate([8, 0, 0])
circle(d = 8, $fn = 100);
rotate([0,90,0])
cylinder(d=6,h=20, $fn = 100);