rotate([-270,0,-180-30+30+180])translate([+9.4,+42.6,-34.0]){
//import("diamond_hotend_assembly.stl", convexity=3);

rotate([270,0,180+30])translate([-9.4,-42.6,34.0]){
    
//ventilador();
    
    
    

}
}


difference(){
    
    //translate([-10,-40,-25])cube(50,50,50);
    tobera();
}



module ventilador(){
    difference(){
    union(){
    difference(){
    union(){
    translate([25,25,0])cylinder(r=50/2,h=2);
    hull(){
    translate([25,25,0])cylinder(r=4.5,h=2);
    translate([50-3,3,0])cylinder(r=4,h=2);
    }
    hull(){
    translate([25,25,0])cylinder(r=4.5,h=2);
    translate([50-3,50-3,0])cylinder(r=4,h=2);
    }
    hull(){
    translate([25,25,0])cylinder(r=4.5,h=2);    
    translate([3,50-3,0])cylinder(r=4,h=2);
    }
    }
        translate([3.5+43,3.5,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([3.5+43,3.5+43,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([3.5,3.5+43,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([2,-2,2]) cube([23,30,16]);
    }

    translate([0,-7,0])cube([27,25+7,2]);
    }
    translate([4.65,5.65,-0.1])cylinder(r1=3.5/2,r2=3,h=2.2,$fn=16);
    translate([4.65,5.65+15,-0.1])cylinder(r1=3.5/2,r2=3,h=2.2,$fn=16);
    translate([27/2,-7/2,-2])cylinder(r=3/2,h=30,$fn=16);
    union(){
        translate([25,25,-1])cylinder(r=10,h=10);
        translate([25-7,25-7,-1])cylinder(r=7,h=10);
        translate([25-7,25+7,-1])cylinder(r=7,h=10);
        translate([25+7,25+7,-1])cylinder(r=7,h=10);
        translate([25+7,25-7,-1])cylinder(r=7,h=10);
    }
    }
}


module toroide(r1,r2){
    rotate_extrude(convexity = 10)
    translate([r2-r1, 0, 0])
    circle(r = r1, $fn = 100);
}


module tobera(){
difference(){
    union(){
    translate([9.5,-13,-34]){
        difference(){
        translate([0,5,0])rotate([90,0,0])cylinder(r1=16,h=25);
        translate([0,5,0])rotate([90,0,0])cylinder(r1=14,h=25);
            translate([0,20,0])cube([50,50,50],center=true);
            translate([0,-36.5,0])cube([50,50,50],center=true);
        }
        
        difference(){
            union(){
                hull(){
                translate([0,-10,0])scale([1,0.3,1])sphere(r=12);
                translate([0.8,-9,12])scale([1,0.3,1])sphere(r=12);
                }
                rotate([90,0,0])translate([0,0,5])cylinder(r=12,h=5);
            }
        translate([0,5,0])rotate([90,0,0])cylinder(r1=15,h=25);
        translate([0,-12,0])rotate([90,0,0])toroide(2,6.5);
        translate([0,-10,0])scale([0.9,0.2,0.9])sphere(r=12);
        }
    }
    difference(){
    hull(){
        translate([0-2.5,-23,-34])rotate([0,0,0])cube([12*2,2,7]);
        translate([0,-11-3,2+10])rotate([0,90,0])cylinder(r=10,h=27);
    }

    translate([9.5,-13,-34])
    translate([0,5,0])rotate([90,0,0])cylinder(r1=15,h=25);
}

    hull(){
        translate([0,0,2])cube([27,0.1,20]);
        translate([0,-11,2+10])rotate([0,90,0])cylinder(r=10,h=27);
    }
}
//hueco interno
    hull(){
        translate([2,0,4])cube([23,0.2,16]);
        translate([2,-11,2+10])rotate([0,90,0])cylinder(r=8,h=24);
    }
    hull(){
        translate([0-2.5+2,-23,-34-0.5])rotate([0,0,0])cube([10*2,0.1,7]);
        translate([2,-11-3,10])rotate([0,90,0])cylinder(r=8,h=23);
    }
    translate([27/2,-7/2,-2])cylinder(r=3/2,h=30,$fn=16);
}
translate([9.5,-13,-34])
        difference(){
        translate([0,5,0])rotate([90,0,0])cylinder(r1=16,h=25);
        translate([0,5,0])rotate([90,0,0])cylinder(r1=14,h=25);
            translate([0,20,0])cube([50,50,50],center=true);
            translate([0,-36.5,0])cube([50,50,50],center=true);
        }
}


module fan(){
    difference(){
        cube([50,50,20]);
        //translate([4,4,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([4+42,4,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([4+42,4+42,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([4,4+42,-5])cylinder(r=3/2,h=30,$fn=16);
        translate([2,-2,2]) cube([23,30,16]);
    }
    
}