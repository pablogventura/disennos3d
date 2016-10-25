module medidas(){
color("Red")rotate([0,0,-20])scale([0.6,1,1])cylinder(r=26/2,h=0.1);

color("Red")translate([36,0,0])scale([1,1,1])cylinder(r=15/2,h=0.1);
}

module estructura(){
	scale([1,1,0.5]){
		for(i = [0:5:180-5]) {
			hull(){
				rotate([0,i,0])translate([18,0,0])rotate([0,0,20])rotate([0,0,i/2.5])scale([1,2-(i/20)*0.07,1])  cylinder(r=7,h=.1);
				rotate([0,i+5,])translate([18,0,0])rotate([0,0,20])rotate([0,0,(i+5)/2.5])scale([1,2-((i+5)/20)*0.07,1])  cylinder(r=7,h=.1);
			}
		}
	}
}


module eje(){
	module cilindros(){
		translate([0,0,0]) cylinder(r=1,h=40,$fn=16);
		translate([6-2*1,0,0]) cylinder(r=1,h=40,$fn=16);
	}

	difference(){
		hull(){
			cilindros();
			translate([1,10-2*1,0]) scale([0.5,1,1])cilindros();
		}
		translate([0,(10-2)/2,-5]) scale([1,1,1.5])cilindros();
	}
}

module eje2(){
	module cilindros(){
		translate([0,0,0]) cylinder(r=1,h=40,$fn=16);
		translate([6-2*1,0,0]) cylinder(r=1,h=40,$fn=16);
	}

	hull(){
		cilindros();
		translate([1,10-2*1,0]) scale([0.5,1,1])cilindros();
	}

}

translate([0,0,14]){
	estructura();
	translate([-22,2,0])rotate([0,0,-90])eje();
	translate([0,-30,0]){
		mirror([0,1,0]){
			difference(){
				estructura();
				translate([-22.5,2.5,-20])rotate([0,0,-90])scale([1.1,1.1,1.1])eje2();
			}
		}
	}
}