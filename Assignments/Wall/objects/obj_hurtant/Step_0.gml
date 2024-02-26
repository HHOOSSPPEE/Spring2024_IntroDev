if (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height &&
	mouse_check_button_pressed(mb_left) &&
	global.suitcase = false)
{
	room_goto(rm_cutscene);
}

if (global.suitcase = true)
{
	sprite_index = spr_hurtant_unconscious;
}