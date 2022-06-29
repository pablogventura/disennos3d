$fn=128;

difference(){
union(){
cylinder(d=4.5,h=15);

cylinder(d=13,h=3,center=true);
}
translate([0,0,-10])
cylinder(d=2,h=50);

}