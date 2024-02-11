
module borde(valor){
    difference(){
        offset(valor)children();
        children();
    }
}
linear_extrude(50)
borde(5)
scale([1,2,1])
difference(){
    circle(d=20);
    translate([0,-50,0])
    square([100,100]);
}