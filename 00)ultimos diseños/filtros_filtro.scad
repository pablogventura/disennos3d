linear_extrude(10*3+30+10+2)
difference(){
offset(6)
square([126-10,126-10]);
offset(5)
square([126-10,126-10]);
}


linear_extrude(1)
difference(){
offset(5)
square([126-10,126-10]);
offset(1)
square([126-10,126-10]);
}