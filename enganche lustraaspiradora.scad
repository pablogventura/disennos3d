cube([47,20,3]);
translate([3,3/2,0])
hull(){
cube([2,17,0.1]);
translate([0,0,10])cube([5,17,1]);
}

translate([47-3,3/2,0])
mirror([1,0,0])
hull(){
cube([2,17,0.1]);
translate([0,0,10])cube([5,17,1]);
}