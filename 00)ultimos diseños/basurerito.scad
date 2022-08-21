difference(){
linear_extrude(120)
offset(10)
square([65-10*2,100-10*2]);

translate([0,0,0.5])
linear_extrude(120)
offset(9)
square([65-10*2,100-10*2]);
}