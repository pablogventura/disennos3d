
//en realidad para el e3d v5 el ancho de la parte gorda es solo de 5mm, yo lo lije
//color("Red")translate([-50,-50,0.22]) import("originals/SUPPORT_ALL_E3D.STL", convexity=3);

use <e3d-hotend-V5.scad>;
use <fan_holder_v2.scad>;
use <9g_servo.scad>;

difference(){
rotate([0,-180,0]){
	//color("Red")rotate([0,0,180])heatsink(0,100);

	color("Green")
	difference(){
		translate([55/2,-15,11])rotate([0,-90,0]){
			fan_mount(size=40,thick = 54);
		}
		cylinder(r=26/2,h=59);
		translate([-35/2,-40,0]) cube([35,40,60]);
		
	}
	//translate([0,12,0])rotate([0,0,22])translate([-70/2,0,0])cube(70);
	translate([-55/2,-30/2,3.7]){
		difference(){
			cube([55,40,5.6]);
			union(){
				translate([55/2-12/2,-1,-1])cube([12,16,10]);
				translate([55/2,15,-1])cylinder(r=6,h=10);
			}

		}
	}
}
translate([22,16,-40])rotate([0,90,0]) scale([1.05,1.05,1.05])9g_motor();
	//translate([27.5,-2.5,-32-17])cylinder(r=10,h=35);
translate([10,-2.5-10,-32-17])cube([20,18,35]);	
}

translate([0,25,-4-5.6-1-20]) mirror([0,0,1])rotate([20,0,0]) translate([-50/2,0,0])scale([50/40,50/40,1]) fan_mount(size=40,thick = 4);

difference(){
translate([0,25,-4-5.6-1-20]) mirror([0,0,1])rotate([20,0,0]) translate([-50/2,0,0])scale([50/40,50/40,1]){
	hull(){
		translate([0,0,4])cube([40,40,0.1]);
		translate([20,10,20])scale([1,0.5,1])rotate([10,0,0])cylinder(r=15,h=0.1);
	}
	hull(){
		translate([20,10,20])scale([1,0.5,1])rotate([10,0,0])cylinder(r=15,h=0.1);
		translate([20,0,37])scale([0.7,0.2,1])rotate([5,0,0])cylinder(r=15,h=0.1);
	}
}
translate([0,25,-4-5.6-1-20]) mirror([0,0,1])rotate([20,0,0]) translate([-50/2,0,0])scale([50/40,50/40,1]){
	hull(){
		translate([0,0,3])cube([38,38,0.1]);
		translate([20,10,20])scale([1,0.5,1])rotate([10,0,0])cylinder(r=13,h=0.1);
	}
	hull(){
		translate([20,10,20])scale([1,0.5,1])rotate([10,0,0])cylinder(r=13,h=0.1);
		translate([20,0,38])scale([0.7,0.1,1])rotate([5,0,0])cylinder(r=13,h=0.1);
	}
}
}
difference(){
	union(){
		translate([24.5,-15,-51-5.6])cube([3,40,51]);
		translate([7+3,9,-57]) cube([17,16,35]);
	}
	translate([22,16,-40])rotate([0,90,0]) scale([1.05,1.05,1.05])9g_motor();

translate([10,-2.5-10,-32-17])cube([20,18,35]);	

}
translate([-24.5-3,-15,-7.5-5.6])cube([3,40,7.5]);
color("Blue") translate([-24.5-3,-15,-7.5-5.6-44+0.5])cube([3,40,7.5]);


//translate([-24.5-3,-15,-51-5.6])cube([3,40,51]);