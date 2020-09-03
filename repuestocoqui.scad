difference(){
    cylinder(d=53+4,h=32);
    translate([0,0,2+11])cylinder(d=53,h=32);
    translate([0,0,2])cylinder(d=50,h=32);
    translate([40,0,32/2+2])cube([32,12-2,32],center=true);
}

difference(){
    translate([40,0,15/2])cube([32,12,15],center=true);
    translate([40-5,0,32/2+2])cube([32-2+10,12-2,32],center=true);
    translate([0,0,2+11])cylinder(d=53,h=32);
    translate([0,0,2])cylinder(d=50,h=32);
}