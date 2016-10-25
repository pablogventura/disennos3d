
//en realidad para el e3d v5 el ancho de la parte gorda es solo de 5mm, yo lo lije
difference(){
union(){
difference(){
translate([-100,-50,0]) import("originals/SUPPORT_ALL_E3D.STL", convexity=3);
translate([1.5,25,-2]) cube([2,20,10]);
translate([1.5-50,25,-2]) cube([1,20,10]);
}
translate([-50/2+1.9,-12.9,2]) cube([52,52,4], center=true);
}
translate([-50/2+1.9,-12.9,-2]) cylinder(r=48/2,h=10);
}




		
