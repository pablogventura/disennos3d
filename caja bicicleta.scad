/*difference(){

	translate([0,0,0])cube([30,50,50]);


translate([30/2,0,-1])cylinder(r=45/2,h=102);
    translate([1,28,1])cube([28,50,48]);

translate([-2,22,5])cube([100,3,10]);
translate([-2,22,35])cube([100,3,10]);


translate([10,0,10])rotate([-45,0,0])translate([0,25+5,-20])cube([10,3,100]);
translate([10,0,-60])rotate([45,0,0])translate([0,50*2,10])cube([10,3,100]);
}
*/
translate([0,10,0])
difference(){
translate([0,49,0])cube([30,2,50]);
    difference(){

	translate([0,0,0])cube([30,50,50]);


translate([30/2,0,-1])cylinder(r=45/2,h=102);
    translate([1,28,1])cube([28,50,48]);

translate([-2,22,5])cube([100,3,10]);
translate([-2,22,35])cube([100,3,10]);


translate([10,0,10])rotate([-45,0,0])translate([0,25+5,-20])cube([10,3,100]);
translate([10,0,-60])rotate([45,0,0])translate([0,50*2,10])cube([10,3,100]);
}}
