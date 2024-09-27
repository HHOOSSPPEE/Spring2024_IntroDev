if(sound_timer_count < sound_timer_length){
	play_sound = false;
	sound_timer_count++;
}

if(sound_timer_count >= sound_timer_length){
	play_sound = true;
	sound_timer_count = 0;
}

if(place_meeting(x+5,y+5,obj_player) && play_sound){
	audio_play_sound(snd_bubbles, 0, false);
}