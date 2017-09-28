difference(){
union(){
    import ("Z_Endstop_repaired.stl", convexity = 8);

    translate([10,2,0])cube([25,8,13]);
}
mirror([0,0,0])
translate([20,5.5,0])
union(){
hull(){
translate([0,0,10.5])cube([13,6,7],center=true);
translate([0,0,0])cube([13,2,1],center=true);
}

translate([0,-5,0])cube([2,10,30],center=true);
}
}