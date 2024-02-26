if keyboard_check_pressed(vk_space) {
    if (global.fake_item_collected1 && global.fake_item_collected2) {
		if dialogueIndex == 3 {
			instance_destroy(obj_faint);
            dialogueIndex = 4;
        }
    } else if dialogueIndex < 3 {
        dialogueIndex += 1;
    }

	if dialogueIndex >= array_length_1d(dialogue) {
        dialogueIndex = array_length_1d(dialogue) - 1;
    }
}
