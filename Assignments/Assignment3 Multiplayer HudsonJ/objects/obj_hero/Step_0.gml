/// @description Insert description here
// You can write your code in this editor

//idles
if keyboard_check_released(vk_right) || keyboard_check_released(ord("D"))
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right
}
if keyboard_check_released(vk_left) || keyboard_check_released(ord("A"))
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_right
}
if keyboard_check_released(vk_up) || keyboard_check_released(ord("W"))
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_up
}
if keyboard_check_released(vk_down) || keyboard_check_released(ord("S"))
{
	audio_stop_sound(walking_sound)
	sprite_index = spr_hero_idle_dwn
}

if keyboard_check_pressed(ord("F")) && fused = true
{
	fused = false
	instance_destroy()
	instance_create_layer(x+20,y,"Instances",obj_hero_red)
	instance_create_layer(x-20,y,"Instances",obj_hero_blue)
}

//moving
if keyboard_check(vk_right) && keyboard_check(ord("D")) && !place_meeting(x +2,y,obj_collider)
{
	
	image_xscale = 2
	sprite_index = spr_hero_move_right
	x += walkspeed;
}
if keyboard_check(vk_left) && keyboard_check(ord("A")) && !place_meeting(x - 2,y,obj_collider)
{
	
	image_xscale = -2
	sprite_index = spr_hero_move_right
	x -= walkspeed;
}
if keyboard_check(vk_up) && keyboard_check(ord("W")) && !place_meeting(x,y-2,obj_collider)
{
	
	sprite_index = spr_hero_move_up
	y -= walkspeed;
}
if keyboard_check(vk_down) && keyboard_check(ord("S")) && !place_meeting(x,y+ 4,obj_collider)
{
	
	sprite_index = spr_hero_move_dwn
	y += walkspeed;
}



if keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
{
	audio_play_sound(walking_sound,0,true)
}
if keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
{
	audio_play_sound(walking_sound,0,true)
}