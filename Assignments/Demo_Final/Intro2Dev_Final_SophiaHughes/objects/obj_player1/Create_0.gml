move_speed = 1;
max_speed = 1;
jump_speed = -3.1;
player_gravity = 0.2;
max_fall_speed = 1;

move_x = 0;
move_y = 0;
on_ground = false;
proj_direction = true;

star_prox = false;
star_prox2 = false;
star_prox3 = false;
button_trigger = false;

state = STATE_IDLE;

#macro STATE_IDLE 0
#macro STATE_WALKING 1