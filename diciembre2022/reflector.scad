/*
difference(){
hull(){
cylinder(d=27,h=10);
translate([-27/2+75,-4+27/2,0])
cube([10,30,10]);
}
translate([-20,12,3])
cube([100,1,20]);
translate([0,0,-5])
cylinder(d=10,h=20);
}
*/

union(){

hull(){
difference(){ 
translate([-10/2,-(27/2),10])
cube([75,27/2+10/2,10]);
    
translate([-10/2-5,-(27/2)-1,9])
cube([75,27/2+10/2+2,12]);
}


translate([0,0,10])
cylinder(d=10,h=10);
translate([0,-10+1.5,10])
cylinder(d=10,h=10);
}

cylinder(d=10,h=20);
}
translate([70,-13.5+0.1,0])
mirror([1,1,0])
cube([1,30,20]);