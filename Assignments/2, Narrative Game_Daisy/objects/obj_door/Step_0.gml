//to room 2
if(room == rm_1_home && place_meeting(x, y, obj_player))
{
	room_goto(rm_2_garden);
	obj_player.x = 585;
	obj_player.y = 100;
}

//back to room 1
if(room == rm_2_garden && place_meeting(x, y, obj_player))
{
	room_goto(rm_1_home);
	obj_player.x = 800;
	obj_player.y = 950;
}