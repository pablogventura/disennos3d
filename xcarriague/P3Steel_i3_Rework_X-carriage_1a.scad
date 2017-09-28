rotate([90,0,180]){
difference(){
    translate([0,0,0]) rotate([0,0,180])import("X-CARRIAGE.stl");
    translate([0,10,0])cylinder(r=3,h=50,center=true);
    translate([0,31,0])cylinder(r=2.5,h=50,center=true,$fn=16);
}
difference(){
    hull(){
        translate([-24/2,-34,6])cube([24,1,12],center=true);
        translate([-24/2,-34-15+15.5,6+12+5+2+6])rotate([90,0,0])cylinder(r=24/2,h=18);
        translate([-24/2,-45,8])rotate([0,90,0])cylinder(r=6,h=24,center=true);
    }
    translate([-24/2,-34-15+20,6+12+5+2+6])rotate([90,0,0])cylinder(r=18.5/2,h=30);
    translate([0,-42.5,0])

    translate([0,0,22+10])cube([50,8,40],center=true);

}

//translate([-12,0,31])rotate([90,0,0])#cylinder(r=18/2,h=150,center=true,$fn=24);
//translate([-10,-20,12+16])cube(10);

}

translate([0,-30,5.5]) rotate([180,0,-90])#import("diamondmount.stl");

translate([0,-30,0]){
    cylinder(r=1,h=150,$fn=16,center=true);
    //la linea que sigue da la distancia entre el sensor inductivo y la punta
    translate([12,61,0])cylinder(r=8,h=150,$fn=16,center=true);
}