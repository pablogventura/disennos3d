difference(){
translate([209-214,209-214,0]) cube([15,15,4]);

translate([0,0,-1])cylinder(r=2.5,h=10);


translate([209-214,209-214,-1]) translate([12,12,-5]) rotate([15,-15,0])cube([15,15,12]);
}