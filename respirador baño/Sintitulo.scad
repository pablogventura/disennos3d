$fn=256;


difference(){
union(){
translate([0,0,10])
cylinder(d=160,h=1);
translate([0,82.5,7.5])
cube([10,15,7],center=true);
}
translate([0,87,7])
rotate([0,90,0])
cylinder(d=3,h=50,center=true,$fn=16);
    translate([0,-80+5,0])
cylinder(d=2,h=50,center=true,$fn=16);
}

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


difference(){
translate([0,-75,0])
cube([30,10,10],center=true);
translate([0,80,10])
cube([20,25,20],center=true);
cylinder(d=150,h=50,center=true);
        translate([0,-80+2.5,0])
cylinder(d=2,h=50,center=true,$fn=16);
}
