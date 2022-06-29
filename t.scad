$fn=128;

difference(){
union(){
cylinder(d=4.5,h=15);
rotate([0,360/3,0])
cylinder(d=4.5,h=15);
rotate([0,2*360/3,0])
cylinder(d=4.5,h=15);
rotate([90,0,0])
cylinder(d=13,h=7,center=true);
}
cylinder(d=2,h=50);
rotate([0,360/3,0])
cylinder(d=2,h=50);
rotate([0,2*360/3,0])
cylinder(d=2,h=50);
}