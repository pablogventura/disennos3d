difference(){
    union(){        
        translate([-15,-15,0])cube([30,30,4]);
        translate([-41/2,-41/2,4])cube([41,41,2]);
    }
    translate([0,0,2])cylinder(r=12/2,h=10);
    translate([0,0,-1])cylinder(r=5/2,h=10);
}