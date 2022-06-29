$fn=64;
translate([-35.5,0,0])

linear_extrude(30)
offset(-0.1)
difference(){
    offset(2.2)
    offset(-9)
    {
        offset(9*2)
        translate([0,-10,0])
        square([67-9*2,20+1],center=true);
        translate([0,19,0])
        offset(9*2)
        translate([11,10,0])
        square([45-9*2,20+1],center=true);
    }


    offset(9)
    translate([0,-10,0])
    square([67-9*2,20],center=true);
    translate([0,20,0])
    offset(9)
    translate([11,10,0])
    square([45-9*2,20],center=true);

    translate([0,-35,0])
    square([100,50],center=true);
    translate([0,55,0])
    square([100,50],center=true);
}