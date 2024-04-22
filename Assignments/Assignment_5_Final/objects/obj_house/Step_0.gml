if (place_meeting(x, y, obj_player) && mouse_check_button_pressed(mb_right))
{
	global.days++;
	
	obj_keyboard.visible = false;
	room_restart()
}