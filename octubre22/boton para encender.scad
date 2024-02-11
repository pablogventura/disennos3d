
difference(){
    linear_extrude(12+2.5+4.5,center=true)
    offset(1,$fn=32)
square([20,20],center=true);
translate([0,0,1])
cube([14.2,14.2,12+2.5+4.5],center=true);

translate([0,0,14.5-2.5-4])
cube([19,19,12+2.5],center=true);

translate([0,10,-4.75+1.1])
rotate([90,0,0])
cylinder(d=2.5,h=10,$fn=32,center=true);
}