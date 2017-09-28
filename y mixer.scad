difference(){
hull(){
translate([25/2,0,35/2])rotate([0,40,0])cube([15,15,1],center=true);
translate([-25/2,0,35/2])rotate([0,-40,0])cube([15,15,1],center=true);

translate([0,0,-35/2])cube([15,15,1],center=true);
}
translate([-25,0,-25])cube([50,50,50]);



translate([0,0,-30])cylinder(r=9.5/2,h=12+8,$fn=24);
translate([-2,0,0])rotate([0,40,0])translate([0,0,32-8])cylinder(r=9.5/2,h=12+8,$fn=24,center=true);
translate([2,0,0])rotate([0,-40,0])translate([0,0,32-8])cylinder(r=9.5/2,h=12+8,$fn=24,center=true);

mirror([1,0,0])tubo();
tubo();



translate([0,0,18])rotate([90,0,0])cylinder(r=3/2,h=20,$fn=24,center=true);
translate([12,0,4])rotate([90,0,0])cylinder(r=3/2,h=20,$fn=24,center=true);
translate([-12,0,4])rotate([90,0,0])cylinder(r=3/2,h=20,$fn=24,center=true);
translate([8,0,-7])rotate([90,0,0])cylinder(r=3/2,h=20,$fn=24,center=true);
translate([-8,0,-7])rotate([90,0,0])cylinder(r=3/2,h=20,$fn=24,center=true);
}
module tubo(){
translate([-35,0,-10])
rotate([90,0,0])
rotate_extrude(convexity = 10, $fn = 100)
translate([35, 0, 0])
circle(r = 2,$fn=24);
}