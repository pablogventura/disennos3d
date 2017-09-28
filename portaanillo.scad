$fn=32;
minkowski(){
    union(){
    cylinder(r1=20/2,r2=10/2,h=22);
    cylinder(r=17,h=5);
    translate([0,0,21.5])sphere(r=10/2);
    }
    sphere(r=1);
}

