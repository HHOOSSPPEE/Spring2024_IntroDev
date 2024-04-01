// Toggle global.inventory display
if (keyboard_check_pressed(ord("I"))) {
    isVisible = !isVisible;
}

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_clear)) {
	ds_map_clear(inventory);
}

if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, obj_submit)) {

	for (var i = 0; i < array_length_1d(inventoryList); i++) {
		// Check if the string starts with "spr_"
		if (string_pos("spr_", inventoryList[i]) == 1) {
			// "spr_" found at the start of the string, so remove it
			inventoryList[i] = string_delete(inventoryList[i], 1, 4);  // Remove the first 4 characters
		}
		// If "spr_" is not at the start, the string remains unchanged
	}

	var compare = compare_arrays(inventoryList, global.burger);

	if(compare) { 
		global.points++;
		obj_timer.timer = 30 - (global.points * 2);
		obj_list.assignTask = false;
		global.burger = ["bun", "patty"];
		inventoryList = [];
		ds_map_clear(inventory);
	}
	else { 
		show_debug_message("NO");
	}

}



