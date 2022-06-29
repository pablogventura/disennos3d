
module tesla(tube_diameter = 10,angulo = 45,in_large = 30,out_large = 50,angle_diameter=15)
translate([0,0,5]){


rotate_extrude(angle=180+angulo)
translate([angle_diameter/2,0,0])
circle(d=tube_diameter);

translate([angle_diameter/2,0,0])
rotate([90,0,0])
cylinder(d=tube_diameter, h=out_large);

rotate([0,0,angulo])
translate([-angle_diameter/2,in_large,0])
rotate([90,0,0])
cylinder(d=tube_diameter, h=in_large+(angle_diameter/2+sin(angulo)*angle_diameter/2)/sin(angulo)+8.5);
}

difference(){
tesla(15,25,30,50,15);
tesla(10,25,31,51,15);
}