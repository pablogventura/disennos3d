intersection(){
union(){
translate([0,0,-100])import("por ruleman eje x con soporte teflon V2 Nuevo modelo .stl", convexity=3);
translate([10,0,15])rotate([0,45,0])cube([20,10,8],center=true);
}

translate([15,0,16.5]){
hull(){
rotate([90,0,0])cylinder(r=5,h=30,center=true);
translate([0,0,24])rotate([90,0,0])cylinder(r=5,h=30,center=true);
translate([30,0,0])rotate([90,0,0])cylinder(r=5,h=30,center=true);
translate([30,0,24])rotate([90,0,0])cylinder(r=5,h=30,center=true);
}
}
}