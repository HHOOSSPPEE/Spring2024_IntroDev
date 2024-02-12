//animation control
statusTypes = ["idle", "running", "jumping", "death", "climbing"]
status = statusTypes[0];
//frame controllers
running_frame = 1;
climbing_frame = 5;
//animation timers
anim_timer = 4;
anim_cd = 0;
climbing_timer = 8;
climbing_cd = 0;
//direction
anim_dir = 1;


//movement
dir_x = 0;
move_x = 0;
move_y = 0;
move_speed = 1.5;
jump_speed = 6.5;
grv = 0.5;
//inpu_check
r_check = 0;
l_check = 0;

collidable_ts = layer_tilemap_get_id("ts_collidable");

//flag animation
flag = false;
flagged = false;//checks if already triggered
flag_btm_height = 192;
flag_drop_speed = 2;

victory_location = 3270;
victory = false;