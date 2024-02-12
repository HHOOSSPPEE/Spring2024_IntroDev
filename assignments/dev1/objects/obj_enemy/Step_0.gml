/// @description Insert description here
// You can write your code in this editor

enemy_x = enemy_x + 1 * enemy_speed;
if(place_meeting(x,y,obj_collider))
{
	enemy_x = enemy_x * -1;
}


