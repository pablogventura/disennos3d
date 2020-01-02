cube([50,250,7],center=true);
difference(){
cube([105,145,7],center=true);
translate([57-5,0,0])cube([10,82,10],center=true);

translate([30,60,0])cylinder(d=8,10, center=true);
translate([-30,60,0])cylinder(d=8,10, center=true);
translate([30,-60,0])cylinder(d=8,10, center=true);
translate([-30,-60,0])cylinder(d=8,10, center=true);
  }
  
translate([0,138-5,0])cube([90,26,7],center=true);
translate([0,-138+5,0])cube([90,26,7],center=true);

translate([0,155,0])cylinder(d=20,h=7,center=true);
translate([0,-155,0])cylinder(d=20,h=7,center=true);
translate([0,-155,0])cylinder(d=6,h=10,center=true);
translate([0,155,0])cylinder(d=6,h=10,center=true);
  
  translate([40,80,0])cylinder(d=20,h=20,center=true);