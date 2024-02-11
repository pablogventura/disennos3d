difference(){
hull(){
cube([5,1,10]);

translate([0,-1.5,10/2])
rotate([0,90,0])
cylinder(d=5,h=5,$fn=64);
}
translate([-5,-1.5,10/2])
rotate([0,90,0])
cylinder(d=2,h=15,$fn=64);
}