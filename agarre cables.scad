//#translate([0,17,0])import("airtripper_i3_mount_bracket_mockup_v2.stl");
mirror([0,1,0])
difference(){
union(){
cube([40,17,8]);


}

translate([-1,4,-1])cube([21,9,35]);
translate([0,17/2+3,1])rotate([45,0,0])translate([0,-17/2,0])translate([40,0-1,4])rotate([-90,0,0])cylinder(r=9,h=20);

translate([26,6,-5])cube([2.5,5,20]);
}


