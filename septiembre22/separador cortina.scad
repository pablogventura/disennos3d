linear_extrude(10)
difference(){
offset(1)
offset(-5)
offset(5){
hull(){
translate([0,-15/2+70-15,0])
circle(d=30);
translate([20,15/2,0])
circle(d=15);
translate([-20,15/2,0])
circle(d=15);

translate([0,5/2,0])
square([57,5],center=true);
}
}


offset(-3)
offset(-5)
offset(5){
hull(){
translate([0,-15/2+70-15,0])
circle(d=30);
translate([20,15/2,0])
circle(d=15);
translate([-20,15/2,0])
circle(d=15);

translate([0,5/2,0])
square([57,5],center=true);
}
}
}