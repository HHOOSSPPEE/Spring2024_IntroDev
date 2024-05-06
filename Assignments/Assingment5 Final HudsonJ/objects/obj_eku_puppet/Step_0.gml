/// @description Insert description here
// You can write your code in this editor

if obj_crowd_priest.clicks = 13 && y > 396
{
	visible = true
	y -= 0.8
	sprite_index = spr_hero_move_up
}

if y <= 396
{
	sprite_index = spr_hero_idle_up
}

if obj_crowd_priest.clicks = 18 && y > 340
{
	y-= 0.4
	sprite_index = spr_hero_move_up
}

if y <= 340

{
	instance_create_layer(x,y,"Instances", obj_fade_out)
}