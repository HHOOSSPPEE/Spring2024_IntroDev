//player moves onto the next scree
if (place_meeting(x, y, obj_player)) 
{
	room_goto(destination_room);
}

if (place_meeting(x, y, obj_player) && room == rm_main && global.cake == false)
{
	room_goto(rm_end_fail);
}