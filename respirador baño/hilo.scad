$fn=256;



difference(){
translate([0,-75,0])
cube([30,10,10],center=true);
translate([0,80,10])
cube([20,25,20],center=true);
cylinder(d=150,h=50,center=true);
        translate([0,-80+2.5,0])
cylinder(d=2,h=50,center=true,$fn=16);
}
