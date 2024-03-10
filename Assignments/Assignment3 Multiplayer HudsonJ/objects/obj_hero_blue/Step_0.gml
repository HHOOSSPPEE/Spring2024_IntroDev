/// @description Insert description here
// You can write your code in this editor

//idles
if keyboard_check_released(ord("D")) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right_blue
}
if keyboard_check_released(ord("A")) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right_blue
}
if keyboard_check_released(ord("W")) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_up_blue
}
if keyboard_check_released(ord("S")) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_dwn_blue
}



//moving
if keyboard_check(ord("D")) && !place_meeting(x +3,y,obj_collider)
{
	
	image_xscale =2
	sprite_index = spr_hero_move_right_blue
	x += walkspeed;
}
if keyboard_check(ord("A"))  && !place_meeting(x - 3,y,obj_collider)
{
	
	image_xscale = -2
	sprite_index = spr_hero_move_right_blue
	x -= walkspeed;
}
if keyboard_check(ord("W")) && !place_meeting(x,y-3,obj_collider)
{
	
	sprite_index = spr_hero_move_up_blue
	y -= walkspeed;
}
if keyboard_check(ord("S")) && !place_meeting(x,y+ 5,obj_collider)
{
	
	sprite_index = spr_hero_move_dwn_blue
	y += walkspeed;
}

if keyboard_check_pressed(ord("D"))
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(ord("A"))
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(ord("W"))
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(ord("S"))
{
	audio_play_sound(walking_sound,0,true)
}