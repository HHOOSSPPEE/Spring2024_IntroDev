//next room
if(place_meeting(x, y, obj_player) && visible == true)
{
	room_goto_next();
	obj_player.x = 200;
	obj_player.y = 400;
}