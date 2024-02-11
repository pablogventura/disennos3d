difference(){
linear_extrude(20)
difference(){
    offset(2)
    square([110,20]);
    translate([5,5-7.5/2+10/2,0])
    for (i = [0 : 1: 4]){
        translate([i*(16+5),0,0])
        square([16,7.5]);
    }
}

translate([0,0,-1])
linear_extrude(20)
offset(1)
square([110,20]);

translate([-200,-10,5])
hull(){
translate([-5,20,0])
rotate([0,90,0])
cylinder(d=4,h=300);
translate([-5,20,-10])
rotate([0,90,0])
cylinder(d=4,h=300);
}
}