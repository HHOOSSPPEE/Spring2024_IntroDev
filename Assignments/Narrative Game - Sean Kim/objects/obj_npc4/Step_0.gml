if (keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_player)) {
	if dialogueIndex == 0 {
        dialogueIndex = 1;
	}
	else if dialogueIndex == 1 {
        dialogueIndex = 2;
	}
	else if dialogueIndex == 2 {
        dialogueIndex = 3;
		audio_play_sound(completed, 1, false);
		global.fake_item_collected2 = true;
	}

	if dialogueIndex >= array_length_1d(dialogue) {
		dialogueIndex = array_length_1d(dialogue) - 1;
	}
}
