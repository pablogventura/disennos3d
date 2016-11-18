
//en realidad para el e3d v5 el ancho de la parte gorda es solo de 5mm, yo lo lije
//color("Red")translate([-50,-50,0.22]) import("originals/SUPPORT_ALL_E3D.STL", convexity=3);

use <e3d-hotend-V5.scad>;
use <fan_holder_v2.scad>;
use <9g_servo.scad>;

module precinto(){
rotate([0,0,-90])
difference(){
	cube([5,5,10]);
	translate([1,-1,1.5])cube([2,7,7]);
}}


module todo(){
difference(){
rotate([0,-180,0]){
	//color("Red")rotate([0,0,180])heatsink(0,100);

	color("Green")
	difference(){
		union(){
		translate([55/2,-15,11])rotate([0,-90,0]){
			fan_mount(size=40,thick = 54);
		}
		rotate([0,180,0]){translate([-45/2-2+5,-15,-5.6-3.7-6])cube([45,40,6]);
hull(){
	translate([-20/2,9,-57]) cube([20,16,50]);
	translate([-20/2-1,9,-57]) rotate([0,0,45])cube([0.1,22.5,50]);
}}
		}
		cylinder(r=26/2,h=59);
		translate([-26/2,-40,0]) cube([26,40,60]);
		
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
		translate([20,-2,38+2])scale([0.6,0.08,1])rotate([5,0,0])cylinder(r=13,h=0.1);
	}
}
}
difference(){
	union(){
		translate([24.5,-15,-51-5.6])cube([3,40,51]);
		translate([7+3,9,-57]) cube([17,16,50]);
	}
	translate([22,16,-40])rotate([0,90,0]) scale([1.05,1.05,1.05])9g_motor();

translate([10,-2.5-10,-32-17])cube([20,18,35]);	

}
translate([-24.5-3,-15,-7.5-5.6])cube([3,40,7.5]);

color("Blue") translate([-24.5-3,-15,-7.5-5.6-44+0.5])cube([3,40,7.5]);
color("Blue") translate([-24.5-3+2,-15,-7.5-5.6-44+0.5+1+1])rotate([0,80,0])cube([2,40,7.5]);
mirror([1,0,0])color("Blue") translate([-24.5-3+2,-15,-7.5-5.6-44+0.5+1+1])rotate([0,80,0])cube([2,40,7.5]);

translate([35,-4,-6.6-60+10])
difference(){
cylinder(r=9,h=7);
translate([0,0,-1])cylinder(r=7,h=12);
}
translate([35,-4,-11])
difference(){
union(){
translate([0,0,4.4])cube([22,22,6],center=true);
translate([10,0,4.4-2])cube([2,22,6],center=true);

}
translate([0,0,-1])cylinder(r=7,h=12);
}
//translate([-24.5-3,-15,-51-5.6])cube([3,40,51]);

}

difference(){
todo();
translate([0,25,-4-5.6-1-20]) mirror([0,0,1])rotate([20,0,0]) translate([-50/2,0,0])scale([50/40,50/40,1]){
	hull(){
		translate([0,0,3])cube([38,38,0.1]);
		translate([20,10,20])scale([1,0.5,1])rotate([10,0,0])cylinder(r=13,h=0.1);
	}
	hull(){
		translate([20,10,20])scale([1,0.5,1])rotate([10,0,0])cylinder(r=13,h=0.1);
		translate([20,-2,38+2])scale([0.6,0.08,1])rotate([5,0,0])cylinder(r=13,h=0.1);
	}
}
translate([10,16,-54])cylinder(r=4,h=60);

translate([10,37,-25])rotate([90,0,0])cylinder(r=4,h=20);
translate([-10,16,-54])cylinder(r=4,h=80);
translate([0,35,-22])rotate([-60,0,0])translate([-10,16,-50])cylinder(r=4,h=20);
translate([20,35,-22])rotate([-60,0,0])translate([-10,16,-50])cylinder(r=4,h=20);
translate([0,16,-4])rotate([0,-90,0])cylinder(r=4,h=60,center=true);
translate([10,12+4,-25.4])rotate([0,90,0])cylinder($fn=10,r1=0,r2=4.5,h=30);
translate([10,12+4,-25.4-29])rotate([0,90,0])cylinder($fn=10,r1=0,r2=4.5,h=30);
}

translate([13,-15,-50])rotate([0,0,0])precinto();
translate([-13-5,-15,-30])rotate([0,0,0])precinto();

translate([13   ,9,-30])rotate([0,0,0])precinto();
translate([-14,12,-50])rotate([0,0,-45])precinto();



}