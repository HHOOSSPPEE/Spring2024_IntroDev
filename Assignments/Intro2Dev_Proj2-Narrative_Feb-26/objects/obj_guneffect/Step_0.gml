/// @description Insert description here
// You can write your code in this editor

image_speed = 0.5;
if(image_index == 5) instance_destroy();

if(instance_exists(obj_gun))
{
	x = obj_gun.bullet_x;
	y = obj_gun.bullet_y;
}