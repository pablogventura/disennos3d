
$fn=64;
difference(){
hull(){
cylinder(d=54,h=5);
translate([0,50,7.5])
cube([54,1,15],center=true);
    translate([0,50.5,20])
rotate([90,0,0])
cylinder(d=20,h=1);
}





translate([0,0,-2]){
translate([0,54/2-4.5/2-13.5,0])
color("red")
cylinder(d=2,h=12);
rotate([0,0,360/3])
translate([0,54/2-4.5/2-13.5,0])
color("red")
cylinder(d=2,h=12);
rotate([0,0,2*360/3])
translate([0,54/2-4.5/2-13.5,0])
color("red")
cylinder(d=2,h=12);
}

translate([0,60,24])
rotate([90,0,0])
cylinder(d=4.5,h=50);

translate([0,40,24])
rotate([90,0,0])
cylinder(d=8,h=50);
}
