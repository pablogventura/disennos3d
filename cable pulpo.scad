difference(){
    cylinder(d=22,h=40,$fn=64);
    translate([0,0,2])
    cylinder(d=18,h=40-4);

    translate([0,0,-2])
    cylinder(d=8,h=50);
    
    translate([0,-50,-10])
    cube(100);
}
