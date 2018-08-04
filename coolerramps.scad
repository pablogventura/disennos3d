$fn=128;
difference(){
hull(){
cylinder(r=(101+6)/2,h=20);
translate([-25-3.5,0,45])cube([50,100,50],center=true);
}


translate([0,0,-1])
scale([0.9,0.9,1])
hull(){
cylinder(r=(101+6)/2,h=20);
translate([-25-3.5-3,0,45])cube([50,100,50],center=true);
}

#translate([-25,0,140])rotate([0,-20,0])cube(150,center=true);
translate([0,0,-1])cylinder(r=101/2,h=20);

}