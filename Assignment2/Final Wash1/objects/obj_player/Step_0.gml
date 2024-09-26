var move_speed = spd; 


var left_bound = 10;
var right_bound = room_width-10;
var top_bound = 10;
var bottom_bound = room_height-30;


if (keyboard_check(ord("W"))&& !place_meeting(x, y - move_speed, obj_photo1)&&!place_meeting(x, y - move_speed, obj_instruction) && y - move_speed >= top_bound) {
    y -= move_speed;
    sprite_index = spr_up; 
	
}
else if (keyboard_check(ord("S")) && !place_meeting(x, y + move_speed, obj_photo1)&&!place_meeting(x, y + move_speed, obj_instruction) && y + move_speed <= bottom_bound) {
    y += move_speed;
    sprite_index = spr_down; 
}
else if (keyboard_check(ord("A")) && !place_meeting(x - move_speed, y, obj_photo1)&&!place_meeting(x - move_speed-10, y, obj_instruction) && x - move_speed >= left_bound) {
    x -= move_speed;
    sprite_index = spr_left; 
}
else if (keyboard_check(ord("D"))&& !place_meeting(x + move_speed, y, obj_photo1)&&!place_meeting(x + move_speed, y, obj_instruction) && x + move_speed <= right_bound) {
    x += move_speed;
    sprite_index = spr_right; 
}

else sprite_index = spr_idle; 



if (keyboard_check_pressed(ord("E")) && place_meeting(x, y, obj_begin)) {
    carrying = true;
	 audio_play_sound(sound_valve, 1, false); 

	 pipeStartX = x; 
    pipeStartY = y; 
	createPipe = true;
}



if (carrying && keyboard_check_pressed(ord("Q"))) {
    carrying = false;
	audio_play_sound(sound_valve, 1, false); 
    
}






if (water_shoot_timer > 0) {
    water_shoot_timer -= 1; 
}


if (mouse_check_button(mb_left) && carrying && water_shoot_timer == 0) {
    water_shoot_timer = water_shoot_interval; 

    
    var new_water = instance_create_depth(x,y-10,-1,obj_water);


    var move_speed = 4; 
       var angle_offset = 30; 
    var base_direction = 270; 

  
      var new_water_plus_30 = instance_create_depth(x,y-10,-1,obj_water);
  new_water_plus_30.hspeed = lengthdir_x(move_speed, base_direction + angle_offset);
     new_water_plus_30.vspeed = lengthdir_y(move_speed, base_direction + angle_offset);

    var new_water_minus_30 = instance_create_depth(x,y-10,-1,obj_water);
    new_water_minus_30.hspeed = lengthdir_x(move_speed, base_direction - angle_offset);
    new_water_minus_30.vspeed = lengthdir_y(move_speed, base_direction - angle_offset);
}



