if ((place_meeting(x, y, obj_p1) || place_meeting(x, y, obj_p2)) && obj_p1.isClear)
{
	room_goto(destination);
}