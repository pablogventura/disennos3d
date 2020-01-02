difference(){
  union(){
scale([2.5,1,1])sphere(d=53,$fn=64);
hull(){
translate([-26,0,-10])rotate([90,0,0])cylinder(d=14,h=7,center=true);
translate([-26,0,-31])rotate([90,0,0])cylinder(d=14,h=7,center=true);
}
translate([0,11,0])
hull(){
translate([-26,0,-10])rotate([90,0,0])cylinder(d=14,h=7,center=true);
translate([-26,0,-31])rotate([90,0,0])cylinder(d=14,h=7,center=true);
}
translate([0,-11,0])
hull(){
translate([-26,0,-10])rotate([90,0,0])cylinder(d=14,h=7,center=true);
translate([-26,0,-31])rotate([90,0,0])cylinder(d=14,h=7,center=true);
}}
translate([-26,0,-31])rotate([90,0,0])cylinder(d=4.6,h=30,center=true);
translate([0,-150/2,-150/2])cube(150);
scale([2.3* 53/45,1,1])sphere(d=45,$fn=64);
rotate([0,90,0])cylinder(d=47,h=10,center=true);
rotate([0,90,0])cylinder(d=43,h=20,center=true);

translate([-40,0,-20])cylinder(d=4,h=40,center=true,$fn=32);
translate([-40,-4,-20])cylinder(d=3,h=40,center=true,$fn=32);
translate([-40,4,-20])cylinder(d=3,h=40,center=true,$fn=32);
translate([-40+4,0,-20])cylinder(d=3,h=40,center=true,$fn=32);
translate([-40-4,0,-20])cylinder(d=3,h=40,center=true,$fn=32);

translate([-55,0,-20])rotate([0,30,0])cylinder(d=4,h=40,center=true,$fn=32);

}

translate([-10-2,15,15])rotate([0,90,0])cylinder(d=5,h=2,center=true);
translate([-10-2,15,-15])rotate([0,90,0])cylinder(d=5,h=2,center=true);
translate([-10-2,-15,15])rotate([0,90,0])cylinder(d=5,h=2,center=true);
translate([-10-2,-15,-15])rotate([0,90,0])cylinder(d=5,h=2,center=true);

//translate([-10,0,0])cube([1,30,30],center=true);
