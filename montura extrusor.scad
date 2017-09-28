//#translate([0,17,0])import("airtripper_i3_mount_bracket_mockup_v2.stl");
difference(){
union(){
cube([25,17,30]);
cube([42,17,3*2+3.5]);
hull(){
cube([42,3,3*2+3.5]);
cube([25,3,30]);
}
}
translate([33,9.5,-5])cylinder(r=3,h=50,$fn=16);

translate([-1,5,-1])cube([21,7,35]);

translate([25,3,3])cube([40,40,3.5]);
}