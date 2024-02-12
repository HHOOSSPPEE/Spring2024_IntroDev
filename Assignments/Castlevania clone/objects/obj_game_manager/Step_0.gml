/// @description Insert description here
// You can write your code in this editor


if(place_meeting(obj_player.x,obj_player.y,obj_enter_scene2) && room == rm_before)
{
	room_goto(rm_after);
	
}
//restart the room
if (player_health<=0)
{
	room_restart();
}
if(room ==rm_win)
{
	if(keyboard_check_pressed(vk_space))
	{
		room_goto(rm_before);
	}
}