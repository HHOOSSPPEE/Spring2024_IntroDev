if (mouse_check_button_pressed(mb_left)) {
    current_sentence_index++;
	audio_play_sound(Sound1, 1, false)
	    if (current_sentence_index >= array_length_1d(sentences)) {
        current_sentence_index = 0; 
    }
}












