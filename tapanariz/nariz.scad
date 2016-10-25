module nariz(){
rotate([0,0,-20])scale([0.6,1,1])cylinder(r=26/2,h=0.1);
}


module agarre(){
translate([36,0,0])scale([1,1,1])cylinder(r=15/2,h=0.1);
}

for(i=[0:5])
hull(){
translate([i*2,0,i])rotate([0,10*i,0])scale([1-0.1*i,1-0.1*i,1])nariz();
translate([(i+1)*2,0,i+1])rotate([0,10*(i+1),0])scale([1-0.1*(i+1),1-0.1*(i+1),1])nariz();
}
for(i=[6:15])
hull(){
translate([i*2,0,6])rotate([0,10*i,0])scale([1-0.1*6,1-0.1*6,1])nariz();
translate([(i+1)*2,0,6])rotate([0,10*(i+1),0])scale([1-0.1*(6),1-0.1*(6),1])nariz();
}

hull(){
translate([16*2,0,6])rotate([0,10*16,0])scale([1-0.1*6,1-0.1*6,1])nariz();
agarre();
}
