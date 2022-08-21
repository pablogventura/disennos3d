difference(){
cube([40,20,8],center=true);
hull(){
cube([28,10,10],center=true);
translate([0,10,0])
cube([22,0.5,12],center=true);
}
}