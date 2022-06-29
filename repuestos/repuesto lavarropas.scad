difference(){
union(){
cube([41,6,7.5]);
cube([1.5,8,7.5]);
hull(){
    translate([5,0,0])
    cube([0.5,7.5,7.5]);
    translate([5+1.5,0,0])
    cube([1.5,6,7.5]);
}
}


translate([3.5,2.5,-1])
cube([1.5,6,7.5+2]);

translate([3.5,2.5+1.5,-1])
rotate([0,0,-90])
cube([2,9,7.5+2]);
}

translate([11+11,3,7.5/2])
rotate([0,90,0])
cylinder(d=6,h=33,$fn=64);
mirror([1,0,0])
translate([-105,0,0]){
difference(){
union(){
cube([41,6,7.5]);
cube([1.5,8,7.5]);
hull(){
    translate([5,0,0])
    cube([0.5,7.5,7.5]);
    translate([5+1.5,0,0])
    cube([1.5,6,7.5]);
}
}


translate([3.5,2.5,-1])
cube([1.5,6,7.5+2]);

translate([3.5,2.5+1.5,-1])
rotate([0,0,-90])
cube([2,9,7.5+2]);
}

translate([11+11,3,7.5/2])
rotate([0,90,0])
cylinder(d=6,h=30,$fn=64);
}