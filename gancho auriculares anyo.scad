

difference(){
union(){
rotate([90,0,0])cylinder(20,d=25);
translate([0,-20,-25/2])cube([25/2,20,25]);
}
translate([0,2,0])rotate([90,0,0])cylinder(55,d=25-4);
translate([0,-25,50/2+2])rotate([0,10,0])cube([50,100,50],center=true);
}

//cylinder(r=6/2*3.14,h=20);