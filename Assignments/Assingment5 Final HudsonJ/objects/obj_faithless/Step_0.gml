/// @description Insert description here
// You can write your code in this editor

if keyboard_check_released(vk_space) && (instance_exists(obj_dialogue_parent))
{
	clicks += 1
}


if y > 399 && clicks = 40
{ 
	visible = true
	y-= 1
	sprite_index = spr_faithless_move_up
}

if clicks = 70
{
	instance_create_layer(x,y,"Instances",obj_fade_out)
}



//if clicks = 6 && x > 535
//{
//	x -= 0.5
	//image_xscale = -1
	//sprite_index = spr_priest_move_right
//}

//if clicks = 13 && x < 586
//{
	//x+= 0.2
	//image_xscale = 1
	//sprite_index = spr_priest_move_right
	
//}

if (instance_exists(obj_dialogue_parent))
{
	sprite_index = spr_faithless_idle_up
}



 

