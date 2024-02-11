difference(){
cube([45,22,5],center=true);
translate([0,0,1])
cube([40,18,5],center=true);
translate([0,0,5/2])
rotate([0,90,0])
cylinder(d=5,h=50,center=true,$fn=64);
}