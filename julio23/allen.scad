$fn=6;

module hueco(diam){
    translate([0,0,-5])
    scale([1.08,1.08,1])
    scale([diam/10,diam/10,10])
    cylinder(d=11.55,h=20);
}

difference(){
hull(){
translate([0,0,0])
cylinder(d=15,h=30,$fn=128);
translate([79-14+4,0,0])
cylinder(d=15,h=30,$fn=128);
}


hueco(10);
translate([20*(9/10)^1,0,0])
hueco(8);
translate([20*2*(9/10)^2,0,0])
hueco(6);
translate([20*3*(9/10)^3,0,0])
hueco(5);
translate([20*4*(9/10)^4,0,0])
hueco(4);
translate([20*5*(9/10)^5,0,0])
hueco(3);
translate([20*6*(9/10)^6,0,0])
hueco(2.5);
translate([20*3.4,0,0])
hueco(2);
translate([20*3.6,0,0])
hueco(1.5);


translate([-50,-0.5,-5])
cube([150,50,40]);
}

