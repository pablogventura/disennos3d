// main.scad
include <HCAD/m4.scad>
include <HCAD/deminkowski.scad>
use <HCAD/obj/fan5015c.scad>

include <dimensions.scad>
include <transforms.scad>
include <diamond.scad>
include <shroud.scad>
include <air_pipe.scad>
include <screw.scad>
include <mount_clear.scad>
include <structural_hull.scad>
include <support.scad>

draw_shroud   = true;
draw_air_pipe = true;

// Shroud test
module final() {
    difference() {
        union() {
            shroud_hull();
            air_pipe_hull($fn=16);
            structural_hull();
        }
        union() {
            shroud_hole();
            air_pipe_hole($fn=16);
            mount_clear();  
        }
        cylinder(r=100, h=shroud_z0);
    }
}
final();

support();

