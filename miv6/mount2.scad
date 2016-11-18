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

	translate([-10-1,0,0])cube([31,20,20]);
}
}
translate([20-3,-(20-3),0])cylinder(r=6/2,h=30);
translate([-(20-3),-(20-3),0])cylinder(r=6/2,h=30);
translate([-(20-3),20-3,0])cylinder(r=6/2,h=30);
translate([0,0,-10]){
translate([20-3,-(20-3),0])cylinder(r=3/2,h=30);
translate([-(20-3),-(20-3),0])cylinder(r=3/2,h=30);
translate([-(20-3),20-3,0])cylinder(r=3/2,h=30);
}
}
}


difference(){
scale([1.23,1,1])
union(){

difference(){
original2();
translate([-20,-39,-1])cube([30,25,20]);
}
difference(){
translate([0,-7,0])original2();
translate([-20,-43-5+35+1,-1])cube([30,40,20]);
}

translate([-1-16,-35-2,2]) cube([1,35,7]);
}
translate([1,-25.5+1.5,17.5-9])fan();
}
translate([-10,12,6])
difference(){
hull(){
cylinder(r=(12+4*2)/2,h=3);
translate([-(12+4*2)+10,-10-2-1,0])cube([12+4*2,13,3]);
}
translate([0,0,-1])cylinder(r=13/2,h=12);
}


translate([0.4,-2.5,5.0]) cube([7,2.5,8.5]);