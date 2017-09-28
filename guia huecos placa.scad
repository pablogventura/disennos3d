difference(){
translate([-2.54,-2.54,0])cube([2.54*7,2.54*7,2]);

for (x = [0:2.54:2.54*5]){
    for (y = [0:2.54:2.54*5]){
        translate([x,y,-5/2])cylinder(r=1/2,h=5,$fn=10);
    }
}

}