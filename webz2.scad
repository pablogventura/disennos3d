difference(){
union(){
hull(){
translate([-10-4,-4,6/2])rotate([0,-90,0])cylinder(r=6/2,h=0.1);
translate([-10,0,6/2])rotate([0,-90,0])cylinder(r=6/2,h=0.1);
}
hull(){
translate([-10-4,-4,6/2])rotate([0,-90,0])cylinder(r=6/2,h=0.1);
translate([-10-4-10,-4,6/2])rotate([0,-90,0])cylinder(r=6/2,h=0.1);
}
hull(){
cylinder(r=6/2,h=4);
translate([0,0,6/2])rotate([0,-90,0])cylinder(r=6/2,h=10);
}
}

translate([0,0,4])cylinder(r=8/2,h=10);
translate([0,0,-1])cylinder(r=3/2,h=10);
translate([-2,-4.3,6/2])rotate([0,-90,0])cylinder(r=3/2,h=30);
}
