difference(){
linear_extrude(14)
offset(2)
union(){
difference(){
hull(){
translate([-9.5,0,0])
circle(d=30);
translate([5,50,0])
circle(d=1);
}

hull(){
translate([-9.5,0,0])
circle(d=10);
translate([-5,40-25,0])
circle(d=1);
}
}
translate([-4.5,20,0])
square([10,32]);

translate([-14.55,1,0])
rotate([0,0,-33+180])
square([10,30]);
}


translate([0,0,2])
linear_extrude(10)
union(){
difference(){
hull(){
translate([-9.5,0,0])
circle(d=30);
translate([5,50,0])
circle(d=1);
}

hull(){
translate([-9.5,0,0])
circle(d=10);
translate([-5,40-25,0])
circle(d=1);
}
}
translate([-4.5,20,0])
square([10,32+5]);

translate([-14.55,1,0])
rotate([0,0,-33+180])
square([10,30+5]);
}
}