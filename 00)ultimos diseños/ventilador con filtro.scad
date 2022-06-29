//rotate([180,0,0])

//cylinder(d=102+2*4*2,h=10);

//cylinder(d=102,h=30);
$fn=128*2;

difference(){
union(){
translate([0,0,1/2])
cube([126,126,2],center=true);
translate([0,0,-19.5])
cylinder(d=101+4,h=20);
}
translate([0,0,-50+20-1])
cylinder(d=101,h=52);
}