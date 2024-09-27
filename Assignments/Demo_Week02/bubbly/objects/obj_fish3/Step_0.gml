if (mouse_check_button_pressed(1) && (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height)){
	obj_text_box.Activate_Text_Box(fish3_text);
	audio_play_sound(snd_click, 0, false);
}