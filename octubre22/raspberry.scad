//cube([85,150,30+40],center=true);
difference(){
union(){
linear_extrude(100)//,center=true)
difference(){
offset(5)
square([85-4,150-4],center=true);
offset(2)
square([85-4,150-4],center=true);
}
linear_extrude(3)
offset(5)
square([85-4,150-4],center=true);
}
for(y = [-60 : 15: 60]) 
for(x = [-30 : 15: 30]){
    translate([x,y,0])
    cylinder(d=10,h=20,center=true);
}

for(y = [-60 : 15: 60]) 
for(x = [15 : 15: 80]){
    translate([0,y,x])
    rotate([0,90,0])
    cylinder(d=10,h=500,center=true);
}



rotate([0,0,90])
for(y = [-30 : 15: 30]) 
for(x = [15 : 15: 80]){
    translate([0,y,x])
    rotate([0,90,0])
    cylinder(d=10,h=500,center=true);
}
translate([-30,70,50])
cube([15,50,90],center=true);
}

translate([100,0,0]){
linear_extrude(5)//,center=true)
offset(5)
square([85-4,150-4],center=true);
linear_extrude(5+2)//,center=true)
offset(2)
square([85-4,150-4],center=true);
}