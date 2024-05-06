if (place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space))
{
	global.days++;
	ifHouse = true;
	
	obj_keyboard.visible = false;
	room_restart()
}