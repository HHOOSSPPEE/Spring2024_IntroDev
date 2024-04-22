/// @description Insert description here
// You can write your code in this editor

if(other.interactable && !other.interacted)
{
	obj_manager.instruction = true;
	if(keyboard_check_pressed(ord("E")))
	{
		other.open_door = true;
	}
}