if keyboard_check_pressed(vk_space) {
    if global.item_collected {
		if dialogueIndex == 0 {
			global.talk = true;
			instance_destroy(obj_faint_wall);
            dialogueIndex = 4;
        }
    } else if dialogueIndex < 3 {
        dialogueIndex += 1;
    }

	if dialogueIndex >= array_length_1d(dialogue) {
        dialogueIndex = array_length_1d(dialogue) - 1;
    }
}
