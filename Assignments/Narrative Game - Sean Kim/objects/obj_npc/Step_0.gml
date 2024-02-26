if (keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_player)) {
	
	//audio_play_sound()
	
	if dialogueIndex == 0 {
        dialogueIndex = 1;
	}
	else if dialogueIndex == 1 {
        dialogueIndex = 2;
	}
	else if dialogueIndex == 2 {
        dialogueIndex = 3;
	}
	else if dialogueIndex == 3 {
        dialogueIndex = 4;
	}

	if dialogueIndex >= array_length_1d(dialogue) {
		dialogueIndex = array_length_1d(dialogue) - 1;
	}
}
