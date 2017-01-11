str="Text";
font = "Consolas";
width=40.6;

letter_size = 9;
letter_height = 2;




difference(){
translate([-5,-0.5,0]){
    cube([20,10,1]);

    translate([1.5,1.5,0])cylinder(r=1,h=2,$fn=16);
    translate([1.5,8.5,0])cylinder(r=1,h=2,$fn=16);
    translate([20-1.5,8.5,0])cylinder(r=1,h=2,$fn=16);
    translate([20-1.5,1.5,0])cylinder(r=1,h=2,$fn=16);
}
translate([0,0,-0.5])
linear_extrude(height = letter_height, convexity = 10) {
text("2³", size = letter_size, font = font,, $fn = 48, spacing=1);
}
}