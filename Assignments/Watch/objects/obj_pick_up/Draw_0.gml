if (visible){
	draw_self();

	if (place_meeting(x, y, obj_player)) {
		// Player is close enough to pick up the object
    
		// Define the position for the text box
		var textX = x + 10;
		var textY = y - 10; // Adjust this value as needed to position the text box above the obj_pick_up
    
		// Set drawing properties (optional, for customization)
		draw_set_colour(c_blue); // Text color
		draw_set_halign(fa_center); // Horizontal alignment
		draw_set_valign(fa_middle); // Vertical alignment
		draw_set_font(fnt_txt); // Set this to the font you want to use
    
		// Draw the text box background (optional)
		var width = string_width("E") + 8; // Calculate the width of the text box
		var height = string_height("E") + 8; // Calculate the height of the text box
		draw_set_colour(c_black); // Background color
		draw_rectangle(textX - width / 2, textY - height / 2, textX + width / 2, textY + height / 2, true); // Draw background
    
		// Draw the "E" text
		draw_set_colour(c_white); // Text color
		draw_text(textX, textY, "E");
	
		//pick up the code
		if (keyboard_check_pressed(ord("E"))){
			if (obj_gm.inventory.size() < 8){
				obj_gm.inventory.add(obj_gm.inventory.size(), Item(self.sprite_index));
				visible = false;
			}
		}
	}
}