$fn=32;
minkowski(){
    difference(){
        cube([15,10,8]);
        translate([0,0,0]);
        hull(){
            translate([10,11,5.5-5/2])
            rotate([90,0,0])
            cylinder(d=5,h=12);
            translate([10,11,5.5+10])
            rotate([90,0,0])
            cylinder(d=5,h=12);
            translate([10+10,11,5.5+1-5/2])
            rotate([90,0,0])
            cylinder(d=5,h=12);
        }
        translate([3.5,5,-2])cylinder(d=3.5+5/2,h=12);

    }
    sphere(d=5/2);
}