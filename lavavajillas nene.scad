$fn=64;
difference(){
cylinder(r=36/2,h=11,center=true);
cylinder(r1=25/2,r2=17/2,h=12/2);
mirror([0,0,1])cylinder(r1=25/2,r2=17/2,h=12/2);
}


difference(){
union(){
cylinder(r1=25/2,r2=15/2,h=11/2);
mirror([0,0,1])cylinder(r1=25/2,r2=15/2,h=11/2);
cylinder(r=15/2,h=20);
}
cylinder(r=6/2,h=80,center=true);
hull(){
translate([0,0,20-5])rotate([90,0,0])cylinder(r=6/2,h=10);
translate([0,0,20])rotate([90,0,0])cylinder(r=4/2,h=10);
}
}