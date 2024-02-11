difference(){
union(){
cube([3,1,20]);

translate([-5+3/2,0,20])
rotate([180-45,0,0])
translate([0,-2,20])
cube([10,5.25,10]);

translate([0,1,20])
rotate([180-45,0,0])
translate([0,0,1])
cube([3,4,29]);

translate([-1,-1.5,20])
rotate([0,90,0])
cylinder(d=5,h=5,$fn=64);
}
translate([-5,-1.5,20])
rotate([0,90,0])
cylinder(d=2.5,h=15,$fn=64);
}