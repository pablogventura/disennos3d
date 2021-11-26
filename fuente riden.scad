module respiracion(){
    translate([0,0,-1])
hull(){
translate([0,50,0])
cube([4,5,5]);
cube([4,5,5]);
}
}

difference(){
    hull(){
        translate([2,2,0])
        cylinder(r=2,h=110,$fn=16);

        translate([81,0,0])
        translate([-2,2,0])
        cylinder(r=2,h=110,$fn=16);

        translate([0,167,0])
        translate([2,-2,0])
        cylinder(r=2,h=110,$fn=16);

        translate([81,167,0])
        translate([-2,-2,0])
        cylinder(r=2,h=110,$fn=16);
    }
    translate([(81-75)/2,(167-161)/2,3])
    color("red")
    cube([75,161,111]);
    translate([55,146,-10])
    cylinder(d=6.5,h=50);

translate([3,0,0])
for(i = [1 : 1: 8]) {
    translate([8*i,10,0])
    respiracion();
}
translate([3,60,0])
for(i = [1 : 1: 8]) {
    translate([8*i,10,0])
    respiracion();
}


translate([75,140,20])
cube([10,13,29]);

translate([63/2+(81-63)/2,5.5-1.5,110-4.5])
scale([1,1,0.3])
rotate([0,90,0])
cylinder(d=5,h=63,center=true);

translate([63/2+(81-63)/2,5.5-1.5+157.5+1.5,110-4.5])
scale([1,1,0.3])
rotate([0,90,0])
cylinder(d=5,h=63,center=true);
}
