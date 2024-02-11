//paredes de 3 pasos o sea 0.6*3=1.8
//techos de 3 pasos o sea 0.4*3=1.2

//el tubo es 9 exterior y 6 interior

//un litro es 10cm x 10cm x 10cm
intersection(){
difference(){
union(){
cube([41+2,12,100+2]);
translate([0,-11.8,0])
cube([41+2,12+10,29+2]);
}


translate([43/2,-9/2+21,95.5])
rotate([90,90,0])
cylinder(d=3,h=21, $fn = 100,center=true);

translate([-0.1,-11.8-10,-0.1])
cube([41-9-2,12+10+20,20-2]);

translate([19.5+2,-75+1,39.5+2]){
    translate([0,80,39])
    rotate([90,0,0]){
        rotate_extrude(angle=180,convexity = 10, $fn = 100)
        translate([15, 0, 0])
        circle(d = 9, $fn = 100);
        translate([15,0,0])
        rotate([90,0,0])
        cylinder(d=9,h=80-15,$fn=100);
        translate([-15,0,0])
        rotate([90,0,0])
        cylinder(d=9,h=80-18-15,$fn=100);
    }
    translate([0,80,-41+15]){
        translate([15,-9,0])
        rotate([0,90,0])
        rotate_extrude(angle=90,convexity = 10, $fn = 100)
        translate([9, 0, 0])
        circle(d = 7, $fn = 100);

        translate([-15,-9,18])
        rotate([0,90,0])
        rotate_extrude(angle=90,convexity = 10, $fn = 100)
        translate([9, 0, 0])
        circle(d = 7, $fn = 100);
    }
    translate([-15,72,-50+18+15])
    rotate([90,90,0])
    cylinder(d=7,h=10, $fn = 100);

    translate([15,72,-50+15])
    rotate([90,90,0])
    cylinder(d=7,h=10, $fn = 100);

}
}
translate([0,0,1.25])
hull(){
translate([-1,7.5,100])
rotate([0,90,0])
cylinder(d=38.5,h=50);

translate([-1,7.5,18])
rotate([0,90,0])
cylinder(d=38.5,h=50);

translate([-1,60,18])
rotate([0,90,0])
cylinder(d=38.5,h=50);
}
}

difference(){
translate([19.5+2,-75+1+1,39.5+2]){

    translate([-15,72,-50+18+15])
    rotate([90,90,0])
    cylinder(d=9,h=20, $fn = 100);

    translate([15,72,-50+15])
    rotate([90,90,0])
    cylinder(d=9,h=20, $fn = 100);

}
translate([19.5+2,-75+1+0.5+1,39.5+2]){

    translate([-15,72,-50+18+15])
    rotate([90,90,0])
    cylinder(d=7,h=21, $fn = 100);

    translate([15,72,-50+15])
    rotate([90,90,0])
    cylinder(d=7,h=21, $fn = 100);

}
}

