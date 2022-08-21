
translate([122/2,0,0])
cylinder(d1=3,d2=6,h=5);
translate([-122/2,0,0])
cylinder(d1=3,d2=6,h=5);

hull(){
translate([122/2,0,0])
cylinder(d=15,h=1);
translate([-122/2,0,0])
cylinder(d=15,h=1);
}