difference(){
import ("LM8UU_by_3drap_dia8_3.STL", convexity = 8);
difference(){
translate([15/2,15/2,4])cylinder(r=16/2,h=16,$fn=50);
translate([15/2,15/2,-5])cylinder(r=13/2,h=30,$fn=50);
}
}
difference(){
translate([15/2,15/2,4])cylinder(r=15/2,h=16,$fn=50);
translate([15/2,15/2,-5])cylinder(r=13/2,h=30,$fn=50);
}