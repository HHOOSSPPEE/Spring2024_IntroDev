//to lakeside
if(room == rm_2_garden && place_meeting(x, y, obj_player)
&& global.talk_with_dog == true)
{
	room_goto(rm_4_lakeside);
	obj_player.x = 180;
	obj_player.y = 900;
}

//back to garden
if(room == rm_4_lakeside && place_meeting(x, y, obj_player))
{
	room_goto(rm_2_garden);
	obj_player.x = 1000;
	obj_player.y = 1000;
}