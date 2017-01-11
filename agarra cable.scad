module cubrecable(){
difference(){
hull(){
scale([1.2,1.2,1]){
translate([0,0,0])cylinder(r1=12.5/2,r2=8/2,h=40);
translate([5,-5,0])rotate([-10,0,45])cylinder(r1=6/2,r2=4/2,h=40);
}
}
translate([0,0,-1])cylinder(r1=12/2,r2=9/2,h=32);
translate([5,-5,-1])rotate([-10,0,45])cylinder(r1=6/2,r2=3/2,h=32);
translate([0,0,30])cylinder(r=9/2,h=32);
translate([0,0,10])rotate([-90,0,45])cylinder(r=1,h=10,$fn=16);
}

}

cubrecable();