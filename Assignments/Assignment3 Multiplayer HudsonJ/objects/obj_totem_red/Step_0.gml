/// @description Insert description here
// You can write your code in this editor

if obj_teleporter.sprite_index = spr_teleporter_lit
{
	sprite_index = spr_totem_red
	exit
}


if place_meeting(x,y+10, obj_hero_red) && keyboard_check(vk_enter)
{
	
	sprite_index = spr_totem_red
}

else sprite_index = spr_totem_r_unlit 

