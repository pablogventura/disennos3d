
$fn=16;
/*
difference(){

    union(){
        hull(){
            rotate([90,0,0])cylinder(r=6/2,h=2*4+7,center=true);
            translate([10+30,0,0])rotate([0,0,0])cylinder(r=(2*4+7)/2,h=6,center=true);
            //rotate([90,0,0])cylinder(r=3.5/2,h=7+2*4+2,center=true);
        }


    }
    rotate([90,0,0])cylinder(r=3.5/2,h=2*4+7+5,center=true);
    rotate([90,0,0])cylinder(r=7/2,h=7.5,center=true);
    translate([10,0,-25])cylinder(r=3.5/2,h=2*4+7+20,center=true);
    translate([40,0,-10])cylinder(r=3/2,h=20);
}
*/
difference(){
union(){
translate([45,0,6])cube([20,15,5],center=true);
translate([45,0,-6])cube([20,15,5],center=true);
translate([55,0,0])cube([5,40,40],center=true);
}
translate([50,30/2,30/2])rotate([0,90,0])cylinder(r=4/2,h=20,center=true);
translate([50,30/2,-30/2])rotate([0,90,0])cylinder(r=4/2,h=20,center=true);
translate([50,-30/2,30/2])rotate([0,90,0])cylinder(r=4/2,h=20,center=true);
translate([50,-30/2,-30/2])rotate([0,90,0])cylinder(r=4/2,h=20,center=true);
translate([40,0,-10])cylinder(r=3/2,h=20);
}