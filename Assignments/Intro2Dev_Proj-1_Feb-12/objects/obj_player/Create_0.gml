//animation control
statusTypes = ["idle", "running", "jumping", "death", "climbing"]
status = statusTypes[0];
transforming = false;
transform_cd = 0;
transform_timer = 5;
transform_frame_count = 0;
enlarge_animation_sequence = [0,1,0,1,0,1,2,1,0,2]
shrink_animation_sequence = [7,4,7,4,7,4,7,5,7,5,7,5,7];
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

mario_type = ["small", "big", "fire"];
mario = mario_type[0];
fireball = false;
//jumping frames
s_jumping_frame = 4;
b_jumping_frame = 5;
jumping_frame = s_jumping_frame;
//climbing frames
s_climbing_frame_start = 5;
s_climbing_frame_end = 6;
b_climbing_frame_start = 7;
b_climbing_frame_end = 8;
climbing_frame_start = s_climbing_frame_start;
climbing_frame_end = s_climbing_frame_end;



//movement
dir_x = 0;
move_x = 0;
move_y = 0;
s_move_speed = 1.5;
b_move_speed = 2;
move_speed = s_move_speed;
jump_speed = 6.8;
grv = 0.5;
//input_check
r_check = 0;
l_check = 0;
//gravity delay(game feel)
grav_timer = 3;
grav_cd = grav_timer;



//flag animation
flag = false;
flagged = false;//checks if already triggered
flag_btm_height = 192;
flag_drop_speed = 2;


_health = 1;
damage = false;
kill = false;
invincible = false;
death = false;

victory_location = 3270;
victory = false;

teleport = false;