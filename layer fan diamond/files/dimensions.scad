// Physical dimensions in milimeters.

/////////////////////////
// MEASURED DIMENSIONS //
/////////////////////////

// Diamond Hotend
diamond_wide_d   = 30; // Wide side diameter
diamond_wide_h   =  2; // Wide section height
diamond_cone_h   = 20; // Height from nozzle fo wide section
diamond_nozzle_d =  1; // Nozzle external diameter

// Mounting screws and plates, where this part will attach to the main mount
mount_screw_z2s         =  34; // Distance from Z axis the mounting screws
mount_screw_base_angle  = 138; // Angle around Z between left and right mounts.
mount_screw_angle       =  30; // Actual angle of the mounts, measured from X.
mount_screw_height      = [35, 50]; // Height of bottom and top screws
mount_screw_diameter    =   3; // Screw diameter, M3.
mount_screw_head_d      =   5; // .. head diameter
mount_screw_head_h      =   2; // .. head height
mount_plate_width       =  10; // Plate width.
mount_plate_below_screw =  6; // Plate extension down from of bottom screw.

// Fan mount parameters
fan_screw_z =   40; // Top fan screw from bottom mount screw.
fan_screw_y = -9.6; // Top fan screw from bottom mount screw.
fan_exaust_dz = -6; // Exaust down from mount screw
fan_exaust_dy = -4; // Exaust
fan_exaust_w = 15;
fan_exaust_h =  2;
fan_exaust_l = 20;

//////////////////////////////////
// ARBITRARY PROJECT DIMENSIONS //
//////////////////////////////////

// Parametric dimensions
wall_st   = 2;
wall_thin = 1;
tight = 0.2;
loose = 0.5;

// Shroud
shroud_z0 =  2; // Shroud elevation from nozzle
shroud_d0 = 40; // Diameter at the bottom
shroud_d1 = diamond_wide_d + 2*(2+wall_thin); // Diameter at the top
shroud_h  = diamond_cone_h - shroud_z0;
shroud_br = 5; // Bottom roundover
shroud_nozzle_d = 15; // Blower opening

// Air pipe
air_pipe_id = min(fan_exaust_w, shroud_h-2*wall_thin);
air_pipe_od = air_pipe_id + 2*wall_st;

// 
fan_offset  = wall_st + mount_screw_head_h + loose; // Distance fan to mount
