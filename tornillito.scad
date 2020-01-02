$fn=32;
cylinder(d=2,h=14+3*2,center=true);
translate([0,0,-8.5])
cylinder(d=5,h=3,center=true);
translate([7,0,0]){
  difference(){

translate([0,0,-8.5])
cylinder(d=5,h=3,center=true);
      translate([0,0,-5])
cylinder(d=2.3,h=14+3*2,center=true);
  }
}