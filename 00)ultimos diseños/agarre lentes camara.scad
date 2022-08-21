linear_extrude(5)
difference(){
translate([-(17+5)/2,-12.5,0])

square([17+5,55]);

circle(d=17);
translate([0,30,0])
circle(d=17);
}