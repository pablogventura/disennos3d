
module tesla(tube_diameter = 10,out_large = 10,in_large = 10,angle_diameter=15){

rotate_extrude(angle=180)
translate([angle_diameter/2,0,0])
circle(d=tube_diameter);

translate([angle_diameter/2,0,0])
rotate([90,0,0])
cylinder(d=tube_diameter, h=39+out_large);

translate([-angle_diameter/2,0,0])
rotate([90,10,0])

cylinder(d=tube_diameter, h=17);

translate([7.5,-35,0])
rotate([90,0,-90-50])
cylinder(d=tube_diameter, h=37+in_large);
}
difference(){
tesla(12);
    tesla(10,11,11);
}