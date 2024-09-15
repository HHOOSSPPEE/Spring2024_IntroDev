

//punch an enemy, it dies
/*if(mouse_check_button_pressed(mb_left) && place_meeting(x -15 ,y, obj_player))
{
	instance_destroy(self);
}
*/

if (place_meeting(x, y, obj_player))
{
	room_goto(rm_battle);
}