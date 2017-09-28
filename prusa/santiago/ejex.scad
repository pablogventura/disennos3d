//translate([0,0,-59])import("por ruleman eje x con soporte teflon V2 Nuevo modelo MOTOR .stl");

difference(){
    import("ejexmotor.stl");
    translate([0,0,0])cube([80,90,70]);
}
