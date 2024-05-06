if (place_meeting(x, y, obj_player) && global.ticket && keyboard_check(vk_space))
{
	room_goto(rm_end);
}