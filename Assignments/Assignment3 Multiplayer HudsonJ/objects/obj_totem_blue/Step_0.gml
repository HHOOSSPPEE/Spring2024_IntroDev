/// @description Insert description here
// You can write your code in this editor
if obj_teleporter.sprite_index = spr_teleporter_lit
{
	sprite_index = spr_totem_blue
exit
}


if place_meeting(x,y+10, obj_hero_blue) && keyboard_check(ord("F"))
{
	sprite_index = spr_totem_blue
}

else sprite_index = spr_totem_b_unlit 

