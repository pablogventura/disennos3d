difference(){
union(){
    import ("X_Endstop_repaired.stl", convexity = 8);

    translate([15,9,0])cube([25,10,13]);
}

translate([27.5,13,0])
union(){
hull(){
translate([0,0,10.5])cube([13,6,7],center=true);
translate([0,0,0])cube([13,2,1],center=true);
}

translate([0,-5,0])cube([2,10,30],center=true);
}
translate([27.5,13-3,0])hull(){
translate([0,0,10.5])cube([2,4,7],center=true);
translate([0,0,0])cube([20,4,1],center=true);
}
translate([-2.5,-3,-30+13/2])cube([60,30,30]);
}

