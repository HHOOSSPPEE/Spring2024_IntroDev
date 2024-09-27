if (mouse_check_button_pressed(mb_left) && (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height) && collectible){
	image_index = 1;
	audio_play_sound(snd_click, 0, false);
	global.pearl_count++;
	collectible = false;
}

//place_meeting(x,y,obj_player)