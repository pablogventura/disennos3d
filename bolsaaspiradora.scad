difference(){
    union(){
        cube([93.7,83,2]);
        translate([46.3/2+19,46.3/2+(83-46.3)/2,0])
        cylinder(d=51.5,h=50);  
    }
    translate([46.3/2+19,46.3/2+(83-46.3)/2,-25])
    cylinder(d=48,h=100);


    translate([12,12,0])
    for (x = [0 : 5 : 70]){
        color("red")
        translate([x,0,-5])
        cylinder(d=1,h=10);    
    }

    translate([12,83-12,0])
    for (x = [0 : 5 : 70]){
        color("red")
        translate([x,0,-5])
        cylinder(d=1,h=10);    
    }

    translate([12,12,0])
    for (y = [0 : 5 : 58]){
        color("red")
        translate([0,y,-5])
        cylinder(d=1,h=10);    
    }

    translate([93.7-12,12,0])
    for (y = [0 : 5 : 58]){
        color("red")
        translate([0,y,-5])
        cylinder(d=1,h=10);    
    }
}
