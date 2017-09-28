


difference(){
    cube([30,10,15]);
    translate([4,15,12])rotate([90,0,0])cylinder(r=3.5/2,h=20,$fn=16);
    translate([4,15,4])rotate([90,0,0])cylinder(r=3.5/2,h=20,$fn=16);
    #translate([20,5,2])
        union(){
            hull(){
                translate([0,0,10.5])cube([13,6,7],center=true);
                translate([0,0,-3])cube([13,2,1],center=true);
            }

            translate([0,-5,0])cube([2,10,30],center=true);
        }
    translate([-5.5,4.5/2,-1])cube([15,5.5,20]);
}