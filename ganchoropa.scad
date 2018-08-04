
difference(){
cylinder(r=55/2,h=5.7,center=true);

cylinder(r=38/2,h=8,center=true);
translate([50,10,0])cylinder(r=12/2,h=8,center=true);
translate([5,8.6/2,-25])cube(50);    

}

rotate([0,0,0])translate([45,0,0]){
cube([50,8.6,5.7],center=true);
translate([22,0,0])rotate([0,90,0])cylinder(r1=10/2,r2=15/2,h=11.2);}

