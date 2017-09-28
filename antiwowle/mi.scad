difference(){
union(){
difference(){
translate([31.56,68.4,0])import("wobble_both_parts.stl");
translate([0,0,-1])cylinder(r=14/2,h=10);
    
}

hull(){
translate([0,12,0])rotate([0,0,-8])cube([10,0.1,8]);
translate([6,16,0])cylinder(r=4,h=8);
}

translate([0,0,-4+8])
difference(){
translate([31.56,68.4,0])import("wobble_both_parts.stl");
translate([-27,-15,-2])cube(40);
}
difference(){
translate([0,0,0])cylinder(r=25/2,h=5);
translate([0,0,-1])cylinder(r=14/2,h=10);
//translate([-27,-15,-10])cube([30,30,30]);
}
}
translate([0,0,8])cube(50);

hull(){
translate([15,0,-1])cylinder(r=4.3,h=20);
translate([40,0,-1])cylinder(r=4.5,h=20);
}
translate([0,-8,-1])cylinder(r=2,h=10,$fn=16);
translate([-8,0,-1])cylinder(r=2,h=10,$fn=16);
}

