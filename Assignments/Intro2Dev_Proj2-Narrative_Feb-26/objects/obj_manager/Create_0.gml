/// @description Insert description here
// You can write your code in this editor
audio_master_gain(3);
audio_played = false;
//font initialization
future_dialogue = font_add("FutureMillennium.ttf", 64, false, false, 32, 128);
future_ui = font_add("FutureMillennium.ttf", 10, false, false, 32, 128);

//camera
view_w = 576; 
view_h = 324; 
cam = camera_create_view(0, 0, view_w, view_h, 0, -1, -1, -1, -1);

view_camera[0] = cam;

//ts and collidables
colliding_ts = layer_tilemap_get_id("ts_col");
collidables = [colliding_ts, obj_platform, obj_door];

instance_create_layer(x, y, "Background", obj_bg);
instruction = false; //if item interacble, show key map
treasure_retrieved = false;
count = 1;
spawn_timer = 90;
spawn_cd = spawn_timer;

offset_y = -50;
offset_x = -65;