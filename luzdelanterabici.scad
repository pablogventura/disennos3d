difference(){
    union(){
        scale([1,1,2])
        difference(){
        sphere(r=64/2,$fn=128);
        translate([0,0,-50])cube(100,center=true);
        }
        translate([0,0,-6])cylinder(r=59/2,h=6);
    }

    translate([0,0,60])rotate([90+30,0,0])cylinder(r=35/2,h=100,center=true);
    difference(){
    translate([0,0,-10])cylinder(r1=55/2,r2=40/2,h=40);
        translate([0,0,60])rotate([90+30,0,0])cylinder(r=45/2,h=100,center=true);
    }
    translate([0,40,18])rotate([90,0,0])cylinder(r=3/2,h=20);
    translate([0,0,39])
rotate([30,0,0]){
translate([0,12,0])cube([100,7,3],center=true);
translate([0,0,0])cube([100,7,3],center=true);
translate([0,-12,0])cube([100,7,3],center=true);
translate([0,-24,0])cube([100,7,3],center=true);
}
}