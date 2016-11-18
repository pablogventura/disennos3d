difference(){
translate([8,-27,0])import("stirrer_enclosure.stl", convexity=3);
translate([0,0,-1])cylinder(r=(35+14+2)/2, h=5);
}