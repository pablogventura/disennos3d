
// Hull of the air ducts
module duct_hull() {
    // Shroud around the hotend
    translate([0,0,shroud_z0])
        cylinder(r1=shroud_d0/2, r2=shroud_d1/2, h=shroud_h);

    // Duct ftom fan exaust to shroud
    hull() {
        multmatrix(tm_bottom_right_screw_zup) {
            minkowski() {
                fan_exaust();
                cylinder(r=wall_st, h=0.001);
            }
        }
        p1();
    }
    hull() {
        p1();
        p2();
    }
    
    module p1() {
        rotate([0,0,mount_screw_base_angle/2])
            translate([mount_screw_z2s, fan_exaust_dy, diamond_cone_h-fan_exaust_w/2])
            p();
    }
    module p2() {
        rotate([0,0,mount_screw_base_angle/2])
            translate([0, 0, diamond_cone_h/2])
            p();
    }
    module p() {
        rotate([90,0,0]) cylinder(d=fan_exaust_w, h=fan_exaust_l, center = true);
    }
}

// Air ducts, negative solids
module duct_punchout() {
    // Get the base hollow from the hull
    deminkowski() {
        duct_hull();
        sphere(r=wall_thin);
    }
    
    // Opening for the fan
    multmatrix(tm_bottom_right_screw_zup) {
        minkowski() {
            fan_exaust();
            translate([0,0,-loose]) cylinder(r=tight, h=100);
        }
    }
    
    // Openings for the Diamond 
    minkowski() {
        diamond();
        mirror([0,0,1]) cylinder(r=2, h=2);
    }
}
