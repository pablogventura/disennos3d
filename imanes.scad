difference(){
union(){
cylinder(r=35/2,h=5);
translate([35/2,0,0])cylinder(r=14/2,h=5);
translate([-35/2,0,0])cylinder(r=14/2,h=5);
}
translate([0,0,-1])cylinder(r=4/2,h=7);
translate([35/2,0,-1])cylinder(r=12/2,h=7);
translate([-35/2,0,-1])cylinder(r=12/2,h=7);
}