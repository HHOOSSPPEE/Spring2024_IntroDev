//player input
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);
var key_jump = keyboard_check_pressed(vk_up);

//movements
var move = key_right - key_left;
hsp = move * run_sp;
vsp = vsp + grv;

//jump
if(place_meeting(x, y+1, obj_collider) && (key_jump))
{
	vsp = -10;
}

//horizontal collision
if(place_meeting(x+hsp, y, obj_collider))
{
	while(!place_meeting(x+sign(hsp), y, obj_collider)) 
	//sign() gets only the sign, eg.-4 → -1
	{
		x = x + sign(hsp); //so that it won't stuck on the wall
	}
	hsp = 0;
}
x = x + hsp;

//vertical collision
if(place_meeting(x, y+vsp, obj_collider))
{
	while(!place_meeting(x, y+sign(vsp), obj_collider)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
/*
if(move != 0)
{
	image_xscale = move * -1;
}
if(place_meeting(x, y+1, obj_collider)) //about to move
{
	if(move != 0)
	{
		sprite_index = spr_fox_run;
	}
	else
	{
		sprite_index = spr_fox_idle;
	}
}
*/

if(hsp > 0)
{
	sprite_index = spr_fox_run;
	image_xscale = -1;
}
else if(hsp < 0)
{
	sprite_index = spr_fox_run;
	image_xscale = 1;
}
else if(hsp == 0)
{
	sprite_index = spr_fox_idle;
	//show_debug_message("stay" + hsp)
}