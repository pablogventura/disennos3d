difference(){
    minkowski(){
        hull(){
            translate([-10,15/2+5/2,29])rotate([0,-45,0])cylinder(r=15/2-2,h=30-4);
            cube([15-4,20-4,35-4]);
        }
        sphere(r=2,$fn=24);
    }


    translate([6-5,-5,-10])cube([7,30,40]);
    translate([-9,10,28])rotate([0,-45,0])cylinder(r=7.7/2,h=35);
    //translate([-45,-32-7,-25])cube(50);
}

