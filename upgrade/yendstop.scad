difference(){
union(){
    import ("y-endstops.STL", convexity = 8);

    translate([9,1.5,0])cube([21,11.75,10]);
}


mirror([0,0,0])
translate([16,7.5,0])
union(){
hull(){
translate([0,0,10.5])cube([13,6,7],center=true);
translate([0,0,0])cube([13,2,1],center=true);
}

translate([0,-5,0])cube([2,10,30],center=true);
}
translate([24,-2,-3])cube([20,20,10]);
}

