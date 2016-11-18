$fn = 64;
translate([0,5.5,8])cylinder(r1=7,r2=6.7,h=10);
difference(){
cylinder(r=25/2,h=8);
translate([0,0,-4])cylinder(r=22/2,h=10);

}
translate([0,0,5])
difference(){
cylinder(r=24/2,h=1);
translate([0,0,-4])cylinder(r=20/2,h=10);

}