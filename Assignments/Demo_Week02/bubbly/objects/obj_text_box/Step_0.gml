if (visible) active_timer++;

if (visible && active_timer > active_duration 
	&& mouse_check_button_pressed(1)){
	visible = false;
	active_timer = 0;
	audio_play_sound(snd_click, 0, false);
}