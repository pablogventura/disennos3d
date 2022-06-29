$fn=128;

difference(){
union(){
    cylinder(d=4.5,h=15);
    rotate([0,90,0])
    cylinder(d=8,h=30,center=true);
    rotate([0,90,0])
    cylinder(d=10,h=10,center=true);
}
translate([0,0,0])
cylinder(d=2,h=50);
rotate([0,90,0])
cylinder(d=5.5,h=40,center=true);
}
