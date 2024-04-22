if (keyboard_check_pressed(ord("E")) && !inventory_open){
	inventory_open = true;
	visible = true;
}

if (keyboard_check_released(ord("E")) && inventory_open){
	inventory_open = false;
	visible = false;
}



var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

if(mouse_check_button_released(mb_right)) {
	draw_set(c_white, 1);
	var inventory_items = inventory.item_get();
	for (var row = 0; row < inventory_rows; row++){
		var pos_y = ui_padding_y + ui_padding_y + (ui_border_size * 13) + (row * (ui_inventory_margin + ui_inventory_box));
		for (var column = 0; column < inventory_columns; column++) {
			var pos_x = ui_padding_x + ui_panel_left + ui_border_size + ui_inventory_padding + (column * (ui_inventory_margin + ui_inventory_box));

		// hover
		if(is_between(mx, pos_x, pos_x + ui_inventory_box)) {
			if(is_between(my, pos_y, pos_y + ui_inventory_box)) {
				var inventory_index = (row * inventory_columns) + column;
				
				if(inventory_index <= array_length(inventory_items) - 1) {
					show_debug_message($"Using {inventory_items[inventory_index].name}");
					
					inventory.item_subtract(inventory_items[inventory_index].name, 1);
				}
				else {
					show_debug_message("No item here.");
				}
			}
		}		
	}
}
}






