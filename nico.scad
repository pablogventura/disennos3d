$fn=48;
anguloenduda=7;
difference(){
    union(){
        hull(){
            cylinder(r=4,h=12,$fn=24);
            translate([-4,2,0])cube([3,4,12]);
        }
        translate([-29,0,6-0.7])
        hull(){
            cylinder(r=3,h=6,$fn=24);

            translate([-20.2+29,0,5-(6-0.7)])cube([3,6,6]);
        }

        translate([-10,6,6])rotate([90,0,0])cylinder(r=18/2,h=6);

        translate([0,-8,0]){
            translate([1.5,0,6])
            rotate([0,anguloenduda,0])
            translate([-1.5,0,-6])
            hull(){
                translate([0,5,0])cube([3,1,12]);
                rotate([90,0,-90])translate([0,5,-3])cylinder(r=10/2,h=3);
            }
        }
        translate([-26.8+3,-8,0]){
            translate([1.5,0,6])
            rotate([0,anguloenduda,0])
            translate([-1.5,0,-6])
            hull(){
                translate([0,5,0])cube([3,1,12]);
                rotate([90,0,-90])translate([0,7.5,-3])cylinder(r=10/2,h=3);
            }
        }

        hull(){
            translate([-23.8,-2,0])rotate([0,0,-30])cube([2.5,9.2,12]);
            translate([-19.2,0,0])cube([3,6,12]);
        }
    }
    translate([0,0,-2])cylinder(r=1.5,h=15,$fn=24);
    translate([-29,0,-2])cylinder(r=1.5,h=15,$fn=24);
    translate([-14-2,8,6]){
        rotate([90,0,0])
        hull(){
            cylinder(r=5.7/2,h=20);
            translate([16.5-5.7,0,0])cylinder(r=5.7/2,h=20);
        }
    }
    translate([-30,-11.15+2.5,5.77+3])rotate([0,90+anguloenduda,0])cylinder(r=3.7/2,h=50);
}

