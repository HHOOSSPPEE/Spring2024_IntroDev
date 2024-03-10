/// @description Insert description here
// You can write your code in this editor

if global.glyphs =4
{
	sprite_index = spr_teleporter_lit 
}

if sprite_index = spr_teleporter_lit && place_meeting(x,y,obj_hero)
{
	room_goto_next()
}
