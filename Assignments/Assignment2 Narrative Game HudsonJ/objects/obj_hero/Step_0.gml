/// @description Insert description here
// You can write your code in this editor

//idles
if keyboard_check_released(vk_right) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right
}
if keyboard_check_released(vk_left) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right
}
if keyboard_check_released(vk_up) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_up
}
if keyboard_check_released(vk_down) 
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_dwn
}

if (instance_exists(obj_dialogue_parent))
    exit;

//moving
if keyboard_check(vk_right) && !place_meeting(x +2,y,obj_collider)
{
	
	image_xscale = 1
	sprite_index = spr_hero_move_right
	x += walkspeed;
}
if keyboard_check(vk_left)  && !place_meeting(x - 2,y,obj_collider)
{
	
	image_xscale = -1
	sprite_index = spr_hero_move_right
	x -= walkspeed;
}
if keyboard_check(vk_up) && !place_meeting(x,y-2,obj_collider)
{
	
	sprite_index = spr_hero_move_up
	y -= walkspeed;
}
if keyboard_check(vk_down) && !place_meeting(x,y+ 4,obj_collider)
{
	
	sprite_index = spr_hero_move_dwn
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