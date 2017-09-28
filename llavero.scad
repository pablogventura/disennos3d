difference(){
union(){
difference(){
cylinder(r=16,h=6);
cylinder(r=15,h=10);
}    


cylinder(r=15,h=5);
translate([-12,-5,5])scale([1,1,0.010])
linear_extrude(h=5)text("JPB");


}

translate([0,-20,2.5])rotate([-90,0,0])cylinder(r=1,h=50,$fn=16);
}