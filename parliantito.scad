difference(){
cylinder(r=30,h=35,$fn=128);
translate([0,0,-3])cylinder(r1=30-1,r2=30-3,h=35);
    translate([0,0,3])cylinder(r=37/2,h=35);
rotate([0,0,60])translate([0,7,30])cube([8,2,20],center=true);
rotate([0,0,-60])translate([0,7,30])cube([8,2,20],center=true);
}