/// @description Insert description here
// You can write your code in this editor

two_frame = one_frame;
one_frame = x;

if(place_meeting(x, y, obj_manager.collidables))
{
	instance_destroy();
}
