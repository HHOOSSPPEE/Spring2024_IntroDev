
//movement
if keyboard_check(vk_right) && !place_meeting(x +5,y,obj_wall)
{
	
	sprite_index = spr_hero_right
	x += walkspeed
}

if keyboard_check(vk_left) && !place_meeting(x -5,y,obj_wall)
{
	 
	sprite_index = spr_hero_left
	x -= walkspeed
}

if keyboard_check(vk_up) && !place_meeting(x, y-8,obj_wall)
{
	sprite_index = spr_hero_up 
	y -= walkspeed
}

if keyboard_check(vk_down)&& !place_meeting(x, y+8,obj_wall)
{ 
	sprite_index = spr_hero_down
	y += walkspeed
}

//idles
if keyboard_check_released(vk_right) sprite_index = spr_hero_idle_right
if keyboard_check_released(vk_left) sprite_index = spr_hero_idle_left
if keyboard_check_released(vk_up) sprite_index = spr_hero_idle_up
if keyboard_check_released(vk_down) sprite_index = spr_hero_idle_down

//inventory button
if keyboard_check_pressed(ord("I")) 
{
	obj_inv_slots.visible = true
	obj_item_manager.visible = true
}
if keyboard_check_pressed(ord("I")) && obj_item_manager.is_visible = true
{
	obj_inv_slots.visible = false
	obj_item_manager.visible = false
	
}