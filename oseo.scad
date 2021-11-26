/*
difference(){
translate([-7,0,0])cube([30,10,8],center=true);
cube([12.7*1.05,5*1.05,10],center=true);
translate([-28,0,0])cube([35,15,5],center=true);
}*/
//76+53
//cube([76,5,3],center=true);
//translate([70/2,-5/2,-3/2])rotate([0,0,-30])cube([53,5,3]);


module line(start, end, thickness1 = 1, thickness2 = 1) {
    hull() {
        translate(start) cube([1,thickness1,3]);
        translate(end) cube([1,thickness2,3]);
    }
}

difference(){
line([0,0,0], [76,0,0],5,5);
translate([-1,0.75,1.5/2])cube([10,3.5,1.5]);
}
//line([76,0,0], [76+40,35,0],5);
line([76,0,0], [76+40-20,35-17.5,0],5,7);
line([76+40-20,35-17.5,0], [76+40-10-5,35,0],7,10);