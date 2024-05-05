randomize();

view_w = 640; 
view_h = 360; 
cam = camera_create_view(0, 0, view_w, view_h, 0, -1, -1, -1, -1);

view_camera[0] = cam;

tileSize = obj_env_generator.tileSize;
tileX = (room_width/tileSize);
tileY = (room_height/tileSize);

var spawn_bound_left = 832;
var spawn_bound_right = 1088;
var spawn_bound_up = 864;
var spawn_bound_down = 1120;

var spawn_x = irandom_range(spawn_bound_left, spawn_bound_right);
var spawn_y = irandom_range(spawn_bound_up, spawn_bound_down);
var block = instance_nearest(spawn_x, spawn_y, obj_block);

while(point_distance(spawn_x, spawn_y, block.x, block.y) <= obj_env_generator.tileSize * 2)
{
	spawn_x = irandom_range(spawn_bound_left, spawn_bound_right);
	spawn_y = irandom_range(spawn_bound_up, spawn_bound_down);
	block = instance_nearest(spawn_x, spawn_y, obj_block);
}

if(point_distance(spawn_x, spawn_y, block.x, block.y) >= obj_env_generator.tileSize * 2)
{
	instance_create_layer(spawn_x, spawn_y, "Instances", obj_player);
}

level_spawn = 
[
	[8, 8, 8],
	[16, 16, 16],
	[48, 48, 48]
]

current_spawn = level_spawn[0];
current_level = -1;

spawn_range_l = 200;
spawn_range_r = 1700;


to_player_range = 800;

enemy_speed_up_range = 600;
enemy_speed_up_speed = 3;

level_complete = true;

enemy_1_count = 100;
enemy_2_count = 100;
enemy_3_count = 100;


win = false;
game_start = false;

new_level_timer = 180;
new_level_cd = new_level_timer;

countdown_font = font_add("cyberpunk_font.ttf", 50, false, false, 32, 128);
gui_width = display_get_gui_width()/2;
