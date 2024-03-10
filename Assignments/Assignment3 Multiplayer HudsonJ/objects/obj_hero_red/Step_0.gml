/// @description Insert description here
// You can write your code in this editor

//idles
if keyboard_check_released(vk_right) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right_red
}
if keyboard_check_released(vk_left) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right_red
}
if keyboard_check_released(vk_up) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_up_red
}
if keyboard_check_released(vk_down) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_dwn_red
}



//moving
if keyboard_check(vk_right) && !place_meeting(x +3,y,obj_collider)
{
	
	image_xscale = 2
	sprite_index = spr_hero_move_right_red
	x += walkspeed;
}
if keyboard_check(vk_left)  && !place_meeting(x - 3,y,obj_collider)
{
	
	image_xscale = -2
	sprite_index = spr_hero_move_right_red
	x -= walkspeed;
}
if keyboard_check(vk_up) && !place_meeting(x,y-3,obj_collider)
{
	
	sprite_index = spr_hero_move_up_red
	y -= walkspeed;
}
if keyboard_check(vk_down) && !place_meeting(x,y+ 5,obj_collider)
{
	
	sprite_index = spr_hero_move_dwn_red
	y += walkspeed;
}

if keyboard_check_pressed(vk_right)
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(vk_left)
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(vk_up)
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(vk_down)
{
	audio_play_sound(walking_sound,0,true)
}