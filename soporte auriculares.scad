minkowski(){
    difference(){
        cube(45, center=true);
        hull(){
            rotate([90,0,0])
            cylinder(d=37+6,h=50, center= true);
            translate([28,0,2])
            rotate([90,0,0])
            cylinder(d=35+6,h=50, center= true);
        }
        cylinder(d=5+6,h=50,center=true);
        hull(){
            translate([0,0,-30])
            cylinder(d=15+6,h=50,center=true);
            translate([20,0,-30])
            cylinder(d=20+6,h=50,center=true);
        }
    }
    sphere(d=6,$fn=16);
}
