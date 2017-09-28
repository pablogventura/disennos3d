difference(){
union(){
translate([-84.45,-97,0])import ("bracket_8mm_frame_b.stl", convexity = 10);
cube([14,11.35,2]);

translate([0,-16,0])cube([14,16,16]);
}
translate([7,-2,8])rotate([90,0,0])cylinder(r1=7/2,r2=11/2,h=20);
}