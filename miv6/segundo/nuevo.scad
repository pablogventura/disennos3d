//use <e3d.scad>;
////translate([0,0,46])rotate([180,0,0])e3d();
//#translate([0,1+15,50+5])cube([50,2,100],center=true);
//
//#translate([0,-5,36])cube([36,10,10],center=true);
//
//color("blue")translate([0,0,-20])sphere(r=1);
//#translate([0,15,32+5])rotate([-90,0,0])import("carriaje 3 nuevo.stl", convexity = 8);
//
//difference(){
//union(){
//    difference(){
//        hull(){
//            translate([-11-13,-40+15,30])rotate([0,90,0])40mmfan();
//            rotate([0,0,180])translate([-11-13,-40+25,30])rotate([0,90,0])40mmfan();
//            
//        }
//
//        hull(){
//            translate([-11-5,-5,10])rotate([0,90,0])cylinder(r=38/2,h=1);
//            cylinder(r=17/2,h=26);
//        }
//    }
//
//
//    hull(){
//        translate([0,-5,0])cube([22,39,1],center=true);
//        translate([0,-5,-9])cube([30,34,1],center=true);
//    }
//    hull(){
//        translate([0,-5,26])cube([20,39,1],center=true);
//        translate([0,-5,29])cube([30,34,1],center=true);
//    }
//    translate([0,-26,0])
//difference(){
//hull(){
//    translate([-20/2,0,0])cube([20,1,5]);
//    translate([0,-10,0])cylinder(r=20/2,h=5);
//}
//translate([0,-10,-2])cylinder(r=12/2,h=8);
//}
//
//translate([0,-26,15])
//difference(){
//hull(){
//    translate([-20/2,0,0])cube([20,1,5]);
//    translate([0,-10,0])cylinder(r=20/2,h=5);
//}
//translate([0,-10,-2])cylinder(r=12/2,h=8);
//}
//}
//translate([0,0,-30])cylinder(r=23/2,h=70);
//translate([0,12.5-1.5,27.5-1.5]){
//
//    translate([0,0,0])rotate([0,90,0])cylinder(r=3/2,h=80,$fn=32,center=true);
//    translate([0,-32,0])rotate([0,90,0])cylinder(r=3/2,h=80,$fn=32,center=true);
//    translate([0,0,-32])rotate([0,90,0])cylinder(r=3/2,h=80,$fn=32,center=true);
//    translate([0,-32,-32])rotate([0,90,0])cylinder(r=3/2,h=80,$fn=32,center=true);
//
//}
//translate([0,0,-10])cube([21,60,20],center=true);
//translate([0,-50,-20])cube([50,1000,60]);
//translate([0,-18,-10])cylinder(r=8/2,h=50);
//translate([15,-23,10])rotate([0,90,0])cylinder(r=1,h=50,$fn=24,center=true);
//translate([15,13.5,10])rotate([0,90,0])cylinder(r=1,h=50,$fn=24,center=true);
//translate([0,-8,2])rotate([90,0,0])cylinder(r=1,h=20,$fn=24,center=true);
//difference(){
//hull(){
//    translate([0,27,-6.5])cube([24,15,19.5],center=true);
//    translate([0,0,-15])cube([24,1,3],center=true);
//}
//translate([0,0,-19.5])cylinder(r=25/2,h=20);
//}
//}
//
//
//translate([-23/2-0.5,18,25.5])rotate([90,0,0])cylinder(r1=2.5/2,r2=3.5/2,h=10,center=true,$fn=16);
//
//
//module 40mmfan(){
//    //translate([-5,-35,0])cube([40,40,1]);
//    translate([5,5,0])
//    hull(){
//    translate([0,0,9])cylinder(r=5,h=1,$fn=32);
//    translate([30,0,9])cylinder(r=5,h=1,$fn=32);
//    translate([0,30,9])cylinder(r=5,h=1,$fn=32);
//    translate([30,30,9])cylinder(r=5,h=1,$fn=32);
//    }
//}
//
//
//
//



difference(){
union(){
    
union(){
    hull(){
        translate([0,39.5,0])cube([20+4,1,30+4],center=true);
        translate([0,35,-6-1])cube([20+4,1,20],center=true);
    }

}

difference(){
translate([0,26,14.5])rotate([0,90,0])cylinder(r=14,h=24,center=true);

translate([0,14,14.5+8])rotate([0,0,0])cube([50,30,30],center=true);

translate([0,26,14.5])rotate([0,90,0])cylinder(r=10,h=30,center=true);
translate([0,20,9.5])cube([30,15,10],center=true);
}
difference(){
    union(){
        translate([0,11,-6])rotate([0,90,0])cylinder(r=1.5,h=30,center=true,$fn=24);
hull(){
    translate([0,27,-7.25])cube([24,15,19.5],center=true);
    translate([0,0,-15.5])cube([24,1,3],center=true);
}
}
translate([0,0,-19.5])cylinder(r=25/2,h=20);
}



translate([10,40,-17])cube([2,10,52]);
translate([-12,40,-17])cube([22,50,2]);

translate([10,80,-17])cube([2,10,52]);
translate([-12,40,-17])cube([2,10,33]);
translate([10,80-40,25])cube([2,50,10]);
translate([10,80-40,-17])cube([2,50,10]);

translate([-23/2-0.5,18+10,25.5])rotate([90,0,180])cylinder(r1=2.5/2,r2=3.5/2,h=5,center=true,$fn=16);
translate([(-23/2-0.5)*-1,18+10,25.5])rotate([90,0,180])cylinder(r1=2.5/2,r2=3.5/2,h=5,center=true,$fn=16);
}
hull(){
translate([-8,40,-13])cube([16,1,23]);
translate([-8,8,-22])cube([16,0.1,0.1]);
}
translate([0,43.5,31])rotate([0,90,0])cylinder(r=2,h=30,center=true);
translate([0,43.5+42.5,-11.5])rotate([0,90,0])cylinder(r=2,h=30,center=true);
translate([0,43.5+42.5,-11.5+42.5])rotate([0,90,0])cylinder(r=2,h=30,center=true);

}
//translate([20/2,34+20-15+1,-15])turbina();

module turbina(){
    //translate([3.5,3.5,-2])cylinder(r=3.2/2,h=30,$fn=32);
rotate([0,-90,0])
    difference(){
    union(){
        translate([0,0,0])cube([27,25,20]);
        translate([50/2,50/2,0])cylinder(r=50/2,h=20);
        translate([3/2,3/2,0]){
            hull(){
                translate([0,0,0])cylinder(r=3/2,h=4,$fn=16);
                translate([50-3,0,0])cylinder(r=3/2,h=4,$fn=16);
                translate([0,50-3,0])cylinder(r=3/2,h=4,$fn=16);
                translate([50-3,50-3,0])cylinder(r=3/2,h=4,$fn=16);
            }
        }
    }
    translate([2,-10,2])cube([27,25,16]);
    translate([3.5+42.5,3.5,-2])cylinder(r=3.2/2,h=30,$fn=32);
    translate([3.5,42.5+3.5,-2])cylinder(r=3.2/2,h=30,$fn=32);
    translate([3.5+42.5,3.5+42.5,-2])cylinder(r=3.2/2,h=30,$fn=32);
}
}