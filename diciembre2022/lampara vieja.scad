difference(){
cube([45,75-35/2+15,35]);
rotate([-10,0,0])
translate([0,15,-2])
hull(){
translate([35/2+5,0,0])
cylinder(d=37,h=60);
translate([35/2+5,-20,0])
cylinder(d=37,h=60);
}

translate([35/2+5,10,5])
rotate([0,90,0])
cylinder(d=5,h=100,center=true);

translate([35/2+5,10,45])
rotate([0,90,0])
cylinder(d=5,h=100,center=true);

translate([35/2+5,10,25])
rotate([0,90,0])
cylinder(d=5,h=100,center=true);
}