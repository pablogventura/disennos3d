$fn=128;
difference(){
union(){
difference(){
    union(){
cylinder(d=50,h=19);
    translate([12-0.5,0,0])
cylinder(d=13*2+4,h=19);
}
translate([0,0,3])
cylinder(d=50-1.5*2,h=19);
    translate([-23.25-1.5,0,7.5/2+11.5])
rotate([90,0,0])
cylinder(d=10.5,h=10,center=true);
    
        translate([-23.25-1.5,0,7.5/2+10.5])
rotate([90,0,0])
cylinder(d=2,h=20,center=true);
    translate([12-0.5,0,3])
cylinder(d=13*2,h=19-4.5+1.5-1.75-1.5);

translate([12,0,24.5])
rotate([0,45,0])
cylinder(d=14*2,h=20,center=true);
translate([0,0,19])
scale([1,1,(1.5*2)/53])
rotate([90,0,0])
cylinder(d=53,h=60,center=true);

}


translate([-25+10,0,0]){
cylinder(d=5,h=19-4.5+1+1);
    translate([0,0,3])
    cylinder(d1=10,d2=5,h=4);
}



translate([20.5-8-1,0,0])
scale([.45,1,1])
hull(){

cylinder(d=15,h=19-3+1+2+1.5);
translate([4,6.5,0])
cylinder(d=2,h=19-3+1+2+1.5);
translate([4,-6.5,0])
cylinder(d=2,h=19-3+1+2+1.5);

}

translate([0,0,10.5]){
difference(){
translate([-23.25-1.5,0,7.5/2])
rotate([90,0,0])
cylinder(d=7.5,h=19,center=true);
translate([-23.25-1.5,0,7.5/2])
rotate([90,0,0])
cylinder(d=10,h=10,center=true);
    translate([-23.25-1.5,0,7.5/2])
rotate([90,0,0])
cylinder(d=2,h=20,center=true);
}

}
}


translate([0,0,-0.1])
linear_extrude(1)
translate([20,10,0])
color("red"){

    translate([1,-4,0])
mirror([1,0,0])
text("Nunca",font="Hugh is Life Personal Use:style=Italic",size=18);
translate([-20,-12,0])
mirror([1,0,0])
text("dejes",font="Hugh is Life Personal Use:style=Italic",size=12);
translate([-5,-15,0])
mirror([1,0,0])
text("de",font="Hugh is Life Personal Use:style=Italic",size=10);
translate([-1,-25,0])
mirror([1,0,0])
text("hidratarte",font="Hugh is Life Personal Use:style=Bold",size=15);
}
}
