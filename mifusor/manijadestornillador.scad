
translate([30,0,0])
difference(){
translate([0,0,0]) import("originals/screwdriver_5x3mm_magnet_v1.1.stl", convexity=3);

translate([-13.5/2,-8.5/2,-0.1])cube([13.5,8.5,6+14.2]);
}

difference(){
translate([0,0,0]) import("originals/screwdriver_5x3mm_magnet_v1.1.stl", convexity=3);
difference(){
cube([50,50,80],center=true);
translate([-(13-0.5)/2,-(8-0.5)/2,-0.1])cube([13-0.5,8-0.5,6+14.2]);
}
translate([-15/2,-10/2,14])cube([15,10,7]);
}