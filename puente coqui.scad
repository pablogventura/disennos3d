difference(){
translate([630/2,0,0])cube([120,100,40],center=true);
cylinder(r=630/2,h=50,center=true,$fn=64*8);
    translate([630/2+80,0,-10])cube([120,120,40],center=true);
    translate([630/2+8-1,0,-50-2])rotate([0,-60,0])cube([120,110,40],center=true);
}


