difference(){
cube([25,30,21],center=true);
translate([0,0,-14.5-2])
cylinder(d=14,h=50,center=true,$fn=6);
cylinder(d=7.5,h=50,center=true);

translate([-2.5-9.5,0,-4.5-2-6-1])
cube(31,center=true);
}