// 15,28.5
$fn=128;
difference(){
hull(){
    scale([(28.5+4)/28.5,(15+4)/28.5,10/30])
    cylinder(d=28.5,h=30);
    translate([28.5/2+(5+3)/2,0,0])
    cylinder(d=5+3,h=10);
}
    translate([0,0,-5])
    scale([1,15/28.5,1])
    cylinder(d=28.5,h=30);




translate([28.5/2+(5+3)/2,0,0])
translate([0,0,-5])
cylinder(d=5,h=30);

translate([28.5/2+(5+3)/2,0,0])
rotate([0,0,30])
translate([0,20/2,0])
cube([2,20,30],center=true);

translate([-20,0,0])
scale([1,8/28,1])
cylinder(d=28,h=30,center=true);
}