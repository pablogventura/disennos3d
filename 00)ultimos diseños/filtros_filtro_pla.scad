linear_extrude(10*3+30+10+2)
difference(){
offset(5.5)
square([126-10,126-10]);
offset(1)
square([126-10,126-10]);
}