$fn=128;
difference(){
    union(){
linear_extrude(12)
offset(-2)
union(){
offset(4)
square([11+2,1]);
offset(4)
square([10-4+2,15-4]);
    

}
linear_extrude(12)
translate([-2,0,0])
square([10+2,15-4+5]);
}

translate([4,25,6])
rotate([90,0,0])
cylinder(d=4.5,h=50);

translate([4,-2+10,6])
rotate([90,0,0])
cylinder(d=8.5,h=15);
}