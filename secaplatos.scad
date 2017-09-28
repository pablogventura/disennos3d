difference(){
cube([14,10+14/2,15]);
translate([14/2,0,-5])cylinder(r=7,h=30,$fn=128);
translate([14/2,20,15/2])rotate([90,0,0])cylinder(r=5/2,h=30,$fn=64);
}