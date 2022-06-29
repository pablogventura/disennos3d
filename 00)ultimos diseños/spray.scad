include <spring.scad>
//cylinder(d=35,h=8+5);
difference(){
union(){
translate([0,0,-2])
difference(){
superficie();
translate([0,0,-12.1973])
cube(35,center=true);
}
translate([0,0,0])
cylinder(d=32.25,h=8.5);
}

translate([0,0,-5])
cylinder(d=3,h=30,$fn=32);
}