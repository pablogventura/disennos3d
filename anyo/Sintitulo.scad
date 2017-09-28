rotate([-90,0,0])
scale([0.7,0.2,0.5])
difference(){
import("heart.stl");
translate([-150/2,0,-150/2])cube(150);
}
translate([-26,10,0])
!minkowski(){
linear_extrude(height = 8){
text("¡Te amo");
translate([5,-17,0])
text("Ñuñita!");
}
sphere(r=1);
}