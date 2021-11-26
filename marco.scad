
module esquina(){
difference(){
cube([10,6,10],center=true);
translate([0,0,10])cube([20,3,20],center=true);
    rotate([0,45,0])translate([-10,-10,0])cube(20);
}
}
module interno(largo = 50){
difference(){
cube([largo,6,10],center=true);
translate([0,0,10])cube([largo+
    10,3,20],center=true);
}
}

module marco(largo = 30){
largo = largo-10;
translate([largo/2+5,0,0])esquina();
translate([-largo/2-5,0,0])mirror([1,0,0])esquina();
interno(largo);
}

marco(220);
