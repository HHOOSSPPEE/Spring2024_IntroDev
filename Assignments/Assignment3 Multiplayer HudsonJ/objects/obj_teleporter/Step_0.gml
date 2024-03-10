/// @description Insert description here
// You can write your code in this editor

if obj_totem_blue.sprite_index = spr_totem_blue && obj_totem_red.sprite_index = spr_totem_red
{
	sprite_index = spr_teleporter_lit 
}

if sprite_index = spr_teleporter_lit && place_meeting(x,y,obj_hero)
{
	room_goto_next()
}
