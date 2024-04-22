if (mouse_check_button_pressed(mb_left) && (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height) && global.pearl_count = 5){
	room_goto(rm_temple);
}