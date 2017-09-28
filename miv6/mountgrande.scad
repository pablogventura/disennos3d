use <e3d.scad>;

color("red",0.5)translate([18.5,-15,63.5])mirror([0,0,1])e3d();
translate([8,-5,43])cube([5,2,5]);
translate([8-6,-5-10-3,43+5])cube([5,2,5+5]);
translate([8-4.5,-5-20,43])cube([5,2,5]);
module
original ()
{
  rotate ([90, 0, 0]) translate ([0, 0,
				  -12.72])
    import ("original/tipo/E3D_integrated_fan.STL", convexity = 8);
}

module
original2 ()
{
  translate ([-17, -19.35, 5]) rotate ([90, 0,
					90])
    import ("original/tipo/fan-nozzle_repaired_1.stl", convexity = 8);
}

module
traba ()
{
  rotate ([90, 0, 90+180]) 
    import ("original/squarelockV2.stl", convexity = 8);
}

difference(){
	union(){
		original ();
		difference(){
			translate([3,-50-4-2,10])rotate([0,-90,0])cube([49,52,3]);
			translate([0,-50-4,7])rotate([0,-90,0]) translate([5,5,-10])cube([40,40,20]);
		}
	}
	translate([0,-50-4,10]) fan();
	translate([-1,-3,53.5])rotate([0,90,0]) cylinder(r=4,h=10);
	translate([-1,-3-25,53.5])rotate([0,90,0]) cylinder(r=4,h=10);
	translate([33,-40,0])cube([5,50,50]);
}

difference(){
	scale([20/15,1,1]) original2 ();
	translate ([-20-0.7, -26.8-5,8]) cube([21,26.8,50]);
}

translate ([-10, 12, 6]) difference ()
{
  hull ()
  {
    cylinder (r = (12 + 4 * 2) / 2, h = 3);
    translate ([-(12 + 4 * 2) + 10, -10 - 2 - 1, 0]) cube ([12 + 4 * 2 + 2,
							    13, 3]);
  }
  translate ([0, 0, -1]) cylinder (r = 12.5 / 2, h = 12);
}

// el agarre de arriba del inductor
translate ([-10, 12, 6 + 34.5]) difference ()
{
  hull ()
  {
    cylinder (r = (12 + 4 * 2) / 2, h = 3);
    translate ([-(12 + 4 * 2) + 10 + 10 + 10 + 2, -10 - 2 - 1,
		0]) cylinder (r = 1, h = 3);
  }
  translate ([0, 0, -1]) cylinder (r = 12.5 / 2, h = 12);
  translate ([5, -5, -1]) cylinder (r = 6 / 2, h = 12);
}

translate ([0, 0, 7]) cylinder (r = 2, h = 35);	//columna
translate ([0.4, -2.5, 5.0]) cube ([7, 2.5, 8.5]);	//para que no diga hot

translate ([19-0.6, 3.2,43+4.5]) traba();



module fan(){
rotate([0,-90,0])
{

	translate([7/2,7/2,0])hueco();
	translate([7/2,7/2+7,0])hueco();
	translate([50-7/2,7/2,0])hueco();
	translate([50-7/2,50-7/2,0])hueco();
	translate([50-7/2,50-7/2-7,0])hueco();
	translate([7/2,50-7/2,0])hueco();

}
}

module hueco(){
	translate([0,0,-5])cylinder(r=1,h=30,$fn=16);
}

translate([2,0,0])cube([31,10,10],center=true);