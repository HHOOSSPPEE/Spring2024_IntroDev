/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("F"))
	{
	instance_destroy(obj_hero_red)
	instance_destroy()
	instance_create_layer(x,y,"Instances",obj_hero)
	}