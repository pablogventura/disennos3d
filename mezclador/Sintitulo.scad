difference(){
import("mixer_BSP1-8.stl", convexity=10);




rotate([0,0,-90]) codo(40);
rotate([0,-180,-90]) codo(40);
    
}
module codo(radio){
    $fn=128;

radius = 2.1;

inner_radius = 0;

bend_radius = radio;

angle_1 = 0;

angle_2 = 22.5;
translate([-radio-2.1,0,0])
    union() {





// upper arm

rotate([0, 0, angle_2])

translate([bend_radius + radius, -0.02, 0])

rotate([-90, 0, 0])

difference() {

cylinder(r=radius, h=50);

translate([0, 0, -1])

cylinder(r=inner_radius, h=52);

}

// bend

        difference()

        {

        // torus

        rotate_extrude()

        translate([bend_radius + radius, 0, 0])

        circle(r=radius);

        // torus cutout

        rotate_extrude()

        translate([bend_radius + radius, 0, 0])

        circle(r=inner_radius);

        // lower cutout

        rotate([0, 0, angle_1])

        translate([-50 * (((angle_2 - angle_1) <= 180)?1:0), -100, -50])

        cube([100, 100, 100]);

        // upper cutout

        rotate([0, 0, angle_2])

        translate([-50 * (((angle_2 - angle_1) <= 180)?1:0), 0, -50])

        cube([100, 100, 100]);

        }

    }
}