module original(){
	rotate([90,0,0])translate([0,0,-12.72])import("original/tipo/E3D_integrated_fan_fastener.STL", convexity=8);
}
module original2(){
	translate([-17,-19.35,5])rotate([90,0,90])import("original/tipo/fan-nozzle_repaired_1.stl", convexity=8);
}

module fan(){
translate([0,0,20])
rotate([-90,0,90]){
difference(){
hull(){
	cylinder(r=40/2,h=19);
	translate([-10,0,0])cube([30,20,19]);
}
	translate([-10+1,1,1])cube([30-2,20,19-2]);
}
translate([20-3,-(20-3),0])cylinder(r=6/2,h=12.5);
translate([-(20-3),-(20-3),0])cylinder(r=6/2,h=12.5);
translate([-(20-3),20-3,0])cylinder(r=6/2,h=12.5);
translate([0,0,-10]){
translate([20-3,-(20-3),0])cylinder(r=3/2,h=12.5);
translate([-(20-3),-(20-3),0])cylinder(r=3/2,h=12.5);
translate([-(20-3),20-3,0])cylinder(r=3/2,h=12.5);
}
}
}
difference(){
union(){
difference(){
original();

//al original le resto la parte de arriba
translate([-1,-15,43.6])cube([10,20,20]);

translate([-2,-65,10])rotate([0,0,0])cube([10,30,30]);
translate([-1,-37,0])cube([10,15,10]);
}
//original2();

//sobresaliencia de arriba
hull(){
translate([0,-7,45])rotate([0,90,0])cylinder(r=10/2,h=3);
translate([0,-7-3-2,45-10-1.5])cube([3,12,10]);
}
hull(){
translate([0,-40-1,11.5])rotate([0,90,0])cylinder(r=4,h=3);
translate([0,-35,11.5])rotate([0,90,0])cylinder(r=4,h=3);
translate([0,-35,11.5+6])rotate([0,90,0])cylinder(r=3,h=3);
}
}
translate([-1,-25.5+1.5,17.5-9])fan();
}

//translate([-1,-25.5+1.5,17.5-9])fan();
difference(){
translate([0,-7,0])original();
translate([0,0,0.01])
union(){
translate([-2,-20,0])cube([60,60,60]);
translate([-2,-30-50,10])cube([60,60,60]);
}
}







