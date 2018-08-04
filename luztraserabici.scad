difference(){
hull(){
translate([10+50/2,0,0])cylinder(r=20/2,h=1);
translate([-10-50/2,0,0])cylinder(r=20/2,h=1);
translate([0,0,10])rotate([0,90,0])cylinder(r=8/2,h=70,center=true);
    translate([0,10,10])rotate([0,90,0])cylinder(r=8/2,h=30,center=true);
}

translate([-25,0,7])rotate([0,0,30])cube([7,50,3],center=true);
translate([25,0,7])rotate([0,0,-30])cube([7,50,3],center=true);
translate([8,0,7])cube([7,50,3],center=true);
translate([-8,0,7])cube([7,50,3],center=true);
}