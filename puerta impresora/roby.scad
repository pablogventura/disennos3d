difference(){
union(){
cylinder(d=70,h=10);
translate([-70/2,0,0])
cube([70,70/2,10]);
}
translate([0,0,7])
cylinder(d=65,h=10);
}
difference(){
translate([70/2,70/2,10-2])
rotate([0,0,180])
hull(){
cube([10,2,15]);
cube([10,10,2]);
}
translate([70/2-5,70/2+5,15])
rotate([90,0,0])
cylinder(d=4,h=20);
}
mirror([1,0,0])
difference(){
translate([70/2,70/2,10-2])
rotate([0,0,180])
hull(){
cube([10,2,15]);
cube([10,10,2]);
}
translate([70/2-5,70/2+5,15])
rotate([90,0,0])
cylinder(d=4,h=20);
}
