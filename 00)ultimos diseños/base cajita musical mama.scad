$fn=128;
difference(){
base();

translate([60-15,10,-5]){
cylinder(d=2.5,h=50);
translate([49,0,0])
cylinder(d=2.5,h=50);
translate([0,37,0]){
cylinder(d=2.5,h=50);
translate([49,0,0])
cylinder(d=2.5,h=50);
}
}
}
module base(){
hull(){
translate([0,70-10,0])mirror([1,0,0])esquinaf();
translate([0+120-10,70-10,0])mirror([0,0,0])esquinaf();
translate([0,0,0])mirror([1,1,0])esquinaf();
translate([0+120-10,0,0])mirror([0,1,0])esquinaf();
}
hull(){
translate([0,70-10,0])mirror([1,0,0])esquinac();
translate([0+120-10,70-10,0])mirror([0,0,0])esquinac();
translate([0,0,0])mirror([1,1,0])esquinac();
translate([0+120-10,0,0])mirror([0,1,0])esquinac();
}
}
module esquinaf(){
  rotate([0,0,45])
translate([0,0.5,10])
rotate([90,0,0]){
linear_extrude(height = 1)
polygon( points=[[0,0],[1,0],[1,-1],[9,-9],[10,-9],[10,-10],[0,-10],]);}
}
module esquinac(){
  rotate([0,0,45])
translate([0,0.5,10])
rotate([90,0,0]){
intersection(){
rotate([0,0,-90])cube(10);
translate([0,-18/2-1,0])cylinder(d=18,h=1,$fn=128);
}

}}
