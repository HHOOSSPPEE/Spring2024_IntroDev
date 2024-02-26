//set visible
if(global.rug_taken == true)
{
	visible = true;
}

//to cemetry
if(place_meeting(x, y, obj_player)
&& keyboard_check(ord("E")))
{
	room_goto(rm_5_cemetery);
	obj_player.x = 600;
	obj_player.y = 980;
}