difference(){
translate([0,0,-100])import("por ruleman eje x con soporte teflon V2 Nuevo modelo .stl", convexity=3);

translate([8,0,16]){
hull(){
rotate([90,0,0])cylinder(r=5,h=30,center=true);
translate([0,0,25])rotate([90,0,0])cylinder(r=5,h=30,center=true);
translate([30,0,0])rotate([90,0,0])cylinder(r=5,h=30,center=true);
translate([30,0,25])rotate([90,0,0])cylinder(r=5,h=30,center=true);
}
}
}