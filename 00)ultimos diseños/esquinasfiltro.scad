difference(){
cube([10,10,30*3+15+30]);
translate([2,2,-1])
cube([10,10,30*3+15+30+2]);
}
translate([0,0,-2])
difference(){
hull(){
cube([20,1,1]);
cube([1,20,1]);
cube([1,1,20]);
}
translate([2,2,2])
cube(20);
}