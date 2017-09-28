difference(){
union(){
hull(){
    translate([41/2,0,0])cylinder(r=12/2,h=3,$fn=24);
    translate([41/2,27.5-12,0])cylinder(r=12/2,h=3,$fn=24);
}
hull(){
    translate([41-6,0,0])cylinder(r=12/2,h=3,$fn=24);
    translate([0+6,0,0])cylinder(r=12/2,h=3,$fn=24);
}

translate([0,0,-3])
hull(){
    translate([11-3,0,0])cylinder(r=6/2,h=4,$fn=24);
    translate([0+3,0,0])cylinder(r=6/2,h=4,$fn=24);
}


translate([41/2,0,2])cylinder(r1=12/2,r2=10/2,h=6,$fn=48);
}
union(){
    //huecos
translate([3,0,-5])cylinder(r=2/2,h=10,$fn=6);
translate([3+2+3,0,-5])cylinder(r=2/2,h=10,$fn=6);

translate([7+23,0,0]){
    translate([3,0,-2])cylinder(r=2/2,h=10,$fn=6);
    translate([3+2+3,0,-2])cylinder(r=2/2,h=10,$fn=6);
}

translate([41/2,-3-2.5+18-2.5,0]){
    translate([0,3,-2])cylinder(r=2/2,h=10,$fn=6);
    translate([0,3+2+3,-2])cylinder(r=2/2,h=10,$fn=6);
}
}
translate([41/2,0,-1])cylinder(r=6/2,h=2.5+1,$fn=24);
//el que sigue deberia ser un engranaje de 25 dientes
translate([41/2,0,3.5+1])cylinder(r=5.2/2,h=3.5+1,$fn=24);
translate([41/2,0,-2])cylinder(r=3.5/2,h=10,$fn=24);
}



