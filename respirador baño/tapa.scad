$fn=256;


difference(){
union(){
translate([0,0,10])
cylinder(d=160,h=1);
translate([0,82.5,7.5])
cube([10,15,7],center=true);
}
translate([0,87,7])
rotate([0,90,0])
cylinder(d=3,h=50,center=true,$fn=16);
    translate([0,-80+5,0])
cylinder(d=2,h=50,center=true,$fn=16);
}
