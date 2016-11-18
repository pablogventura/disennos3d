$fn = 64;

difference(){

cylinder(r1=6,r2=8,h=10);
translate([0,0,-1])cylinder(r1=11/2,r2=12/2,h=12);
translate([0,0,5]) rotate([90,0,0])cylinder(r=1.5,h=10);
}
