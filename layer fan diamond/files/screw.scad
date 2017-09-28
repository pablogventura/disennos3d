module screw(l=8, offset=0, clear_head=0, clear_thread=0) {
    translate([0,0,offset]) {
        mirror([0,0,1]) cylinder(d=mount_screw_diameter+2*clear_thread, h=l);
        cylinder(d=mount_screw_head_d+2*clear_head, h=mount_screw_head_h+(clear_head?10:0));
    }
}
