translate([35,30,-7/2])rotate([0,0,90+180])linear_extrude(height = 8)text("Silvia Sufé",font="Lobster Two:style=Italic");

module mitad(){
difference(){
union(){
difference(){
hull(){
translate([42,62,0])cylinder(d=20,h=7,center=true);
translate([-42,62,0])cylinder(d=20,h=7,center=true);
translate([42,-62,0])cylinder(d=20,h=7,center=true);
translate([-42,-62,0])cylinder(d=20,h=7,center=true);
}
  
translate([57-5,0,0])cube([10,82,10],center=true);


}


difference(){
hull(){
translate([32,138-5-20,0])cylinder(d=26,h=7,center=true);
//translate([32,138-5+20,0])cylinder(d=26,h=7,center=true);
translate([-32,138-5-20,0])cylinder(d=26,h=7,center=true);
//translate([-32,138-5+20,0])cylinder(d=26,h=7,center=true);
}
translate([0,5,0])
hull(){
translate([25+5,138-5-20,0])cylinder(d=20,h=10,center=true);
translate([32,138-5+20-20,0])cylinder(d=20,h=7,center=true);
translate([-25-5,138-5-20,0])cylinder(d=20,h=10,center=true);
translate([-32,138-5+20-20,0])cylinder(d=20,h=7,center=true);
}
}
//translate([0,138-5,0])cube([90,26,7],center=true);
//translate([0,-138+5,0])cube([90,26,7],center=true);
difference(){
hull(){
translate([0,155-20,0])cylinder(d=20,h=7,center=true);
translate([0,120-20,0])cylinder(d=20,h=7,center=true);
}
translate([0,155-20,0])cylinder(d=6,h=10,center=true);
hull(){
translate([0,155-20-2,0])cylinder(d=3,h=10,center=true);
translate([10,155-10-20,0])cylinder(d=3,h=10,center=true);
}
}
difference(){
cube([70,250-40,7],center=true);
  hull(){
  translate([35,82,0])cylinder(d=20,h=20,center=true);
  translate([35,110-20,0])cylinder(d=20,h=20,center=true);
  translate([100,82,0])cylinder(d=20,h=20,center=true);
  translate([100,110-20,0])cylinder(d=20,h=20,center=true);}
  mirror([1,0,0])
    hull(){
  translate([35,82,0])cylinder(d=20,h=20,center=true);
  translate([35,110-20,0])cylinder(d=20,h=20,center=true);
  translate([100,82,0])cylinder(d=20,h=20,center=true);
  translate([100,110-20,0])cylinder(d=20,h=20,center=true);}
}
}
translate([30,60,0])cylinder(d=8,15, center=true);
translate([-30,60,0])cylinder(d=8,10, center=true);
translate([30,-60,0])cylinder(d=8,10, center=true);
translate([-30,-60,0])cylinder(d=8,10, center=true);



hull(){
translate([20,35,0])cylinder(d=25,h=10,center=true);
translate([20,-35,0])cylinder(d=25,h=10,center=true);
}
hull(){
translate([-20,35,0])cylinder(d=25,h=10,center=true);
translate([-20,-35,0])cylinder(d=25,h=10,center=true);
}
translate([-100,-200,-100])cube(200);
}
}
mitad();
mirror([0,1,0])mitad();
