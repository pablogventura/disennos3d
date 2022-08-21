difference(){
    
translate([0,-31,42/2+0.01])
cube([85,55,42],center=true);
scale([1.01,1.01,1])
translate([2-29/2,0,0])
import("logitech270holder.stl");
}