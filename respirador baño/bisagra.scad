$fn=256;


difference(){
translate([0,80,0])
cube([30,20,20],center=true);
translate([0,80,10])
cube([20,25,20],center=true);
cylinder(d=150,h=50,center=true);
    translate([0,87,7])
rotate([0,90,0])
cylinder(d=4,h=50,center=true,$fn=16);

}
