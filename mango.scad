$fn=64;
module hoja(){
hull(){
translate([0,0,0])cylinder(r=1,h=2);
translate([0,200,0])cylinder(r=1,h=2);
translate([18,200,0])cylinder(r=1,h=2);
translate([18,200-60,0])cylinder(r=1,h=2);
}

hull(){
translate([0,0,0])cylinder(r=1,h=2);
//translate([0,200,0])cylinder(r=1,h=2);
//translate([18,200,0])cylinder(r=1,h=2);
translate([18,200-60,0])cylinder(r=1,h=2);

translate([18+15,200-60,0])cylinder(r=1,h=2);
}
}

module mango(){
scale([1,0.5,1])
cylinder(r1=30/2,r2=20/2,h=85);
translate([0,0,85/2])scale([1,0.5,1])cylinder(r1=20/2,r2=25/2,h=85/2);
scale([1,0.5,1])sphere(r=30/2);
    translate([0,0,85])scale([1,0.5,0.5])sphere(r=25/2);
}



module mangolisto(){
    rotate([-90,0,0])
difference(){
mango();
translate([-75,0,-30])cube(150);
    translate([-7-2,-1,300-75])rotate([-90,0,0])hoja();
}
}
difference(){
mirror([1,0,0])mangolisto();
translate([-4,57,2])rotate([0,0,90+5+180])linear_extrude(height = 10)text("¡No se hace",font="Lobster Two:style=Italic");
}
difference(){
translate([40,0,0])mangolisto();
translate([45+2,0,2])rotate([0,0,90+5])linear_extrude(height = 10)text("ni en chiste!",font="Lobster Two:style=Italic");
    translate([0+40,0,-1])cylinder(r=5/2,h=6);
}

translate([0,0,-4])cylinder(r=4.5/2,h=5);
