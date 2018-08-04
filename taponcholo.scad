$fn=32;
cylinder(r1=5.5/2,r2=6/2,h=8);
translate([0,0,8])
scale([1,1,0.5])
difference(){
sphere(r=10/2);
translate([0,0,-10])cube(20,center=true);
}