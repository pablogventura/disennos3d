/*
translate([80,33+30+50,1])#union(){
import("ArduinoMegaBoard.stl");
translate([44.3,1.9,12])import("Ramps14_3D.stl");
}
*/
/*
union(){
difference(){
cube([150,150,1]);
translate([44.5,137.3,-5])cylinder(r=2,h=50,$fn=16);
translate([44.5+80,137.3-48.5,-5])cylinder(r=2,h=50,$fn=16);
}
translate([100,55,0])cube([20,20,26]); //apoyo del stppexp
hull(){
translate([0,149,30])cube([150,1,1]);
translate([0,150-7,0])cube([150,7,1]);
}
}
//translate([89,53,26])cube([42,26,2]);
*/




//translate([105,60,28])cube([10,10,35]);

//tapa
/*
union(){
difference(){
translate([0,0,63])cube([150,150,1]);

translate([110,30,10])cylinder(r=27.5/2,h=80);
translate([110-27.5-26,30,10])cylinder(r=27.5/2,h=80);
}
}
*/

union(){
translate([0,0,1])cylinder(r=5/2,h=62);
}
