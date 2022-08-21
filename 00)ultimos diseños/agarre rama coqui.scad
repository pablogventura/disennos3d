difference(){
linear_extrude(20)
offset(5)
square([60-10,60-10],center=true);

    translate([0,0,-1])
    cylinder(d=30,h=1+15);
    translate([0,0,-1])
    cylinder(d=7,h=25);


translate([20,20,-1])
cylinder(d=4,h=25);
translate([20,-20,-1])
cylinder(d=4,h=25);
translate([-20,20,-1])
cylinder(d=4,h=25);
translate([-20,-20,-1])
cylinder(d=4,h=25);

translate([0,0,1+5]){    
translate([20,20,-1])
cylinder(d=8,h=25);
translate([20,-20,-1])
cylinder(d=8,h=25);
translate([-20,20,-1])
cylinder(d=8,h=25);
translate([-20,-20,-1])
cylinder(d=8,h=25);
}
}