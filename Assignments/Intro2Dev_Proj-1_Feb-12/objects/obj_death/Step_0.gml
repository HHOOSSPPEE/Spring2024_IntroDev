/// @description Insert description here
// You can write your code in this editor


timer--;
if(timer <= 0)
{
	motion_add(270, 1/6);
	if(count == 1)
	{
		motion_add(90, 4);
		count--;
	}
}

if(y> room_height)
{
	room_restart();
	obj_manager.game_over = true;
	instance_destroy();
}