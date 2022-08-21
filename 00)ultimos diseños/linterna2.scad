difference(){
union(){
cylinder(d1=36,d2=22,h=17);
translate([0,0,-17])
cylinder(d=36,h=17);
}

translate([0,0,5.9])
cube([10,10,12],center=true);

translate([0,0,-18])
cylinder(d=34,h=18);

translate([0,0,7])
rotate([90,0,0])
cylinder(d=10,h=50,center=true);
}