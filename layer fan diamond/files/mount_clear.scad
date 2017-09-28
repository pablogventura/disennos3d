// Required hollow spaces on the final object
module mount_clear() {
    // Screws
    multmatrix(tm_top_right_screw)    _screw();
    multmatrix(tm_bottom_right_screw) _screw();
    multmatrix(tm_top_left_screw)     _screw();
    multmatrix(tm_bottom_left_screw)  _screw();
    multmatrix(tm_bottom_right_screw*tm_fan_top_screw) __screw();
	module _screw() rotate([0,90,0]) __screw();
	module __screw() screw(l=15, offset=wall_st, clear_head=loose, clear_thread=tight);
    
    // Mounting plates
    multmatrix(tm_bottom_right_screw) sup();
    multmatrix(tm_bottom_left_screw) sup();
    module sup() {
        translate([-10, -mount_plate_width/2, -mount_plate_below_screw])
        cube([10, mount_plate_width, mount_screw_height[1]]);
    }
    
    // Hotend
    diamond();
}
