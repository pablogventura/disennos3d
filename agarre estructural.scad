difference(){
minkowski(){
    union(){
translate([0,0,2.5])cube([30,30,5],center=true);
hull(){
cylinder(r1=5,r2=5,h=10);
translate([0,0,64])rotate([0,90,0])cylinder(r=7,h=3,center=true,$fn=16);
}}
sphere(r=2,$fn=16);
}

translate([0,0,64])rotate([0,90,0])cylinder(r=4,h=20,center=true,$fn=16);

translate([0,0,-2.5])cube([50,50,5],center=true);
}