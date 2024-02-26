//to forest
if(room == rm_2_garden && place_meeting(x, y, obj_player))
{
	room_goto(rm_3_forest);
	obj_player.x = 1000;
	obj_player.y = 900;
}

//back to garden
if(room == rm_3_forest && place_meeting(x, y, obj_player))
{
	room_goto(rm_2_garden);
	obj_player.x = 200;
	obj_player.y = 980;
}