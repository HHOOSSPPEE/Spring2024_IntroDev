//player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check(ord("S"));

//movements
var move = key_right - key_left;
hsp = move * run_sp;
vsp = vsp + grv;

//jump
if(place_meeting(x, y-1, obj_collider_re)
|| place_meeting(x, y-1, obj_platform_regular))
{
	if(key_jump)
	{
		vsp = 10;
	}
}

//horizontal collision
if(place_meeting(x+hsp, y, obj_collider_re)
|| place_meeting(x+hsp, y, obj_platform_regular))
{
	while(!place_meeting(x+sign(hsp), y, obj_collider_re)
	&& !place_meeting(x+sign(hsp), y, obj_platform_regular))
	//sign() gets only the sign, eg.-4 → -1
	{
		x = x + sign(hsp); //so that it won't stuck on the wall
	}
	hsp = 0;
}
x = x + hsp;

//vertical collision
if(place_meeting(x, y+vsp, obj_collider_re)
|| place_meeting(x, y+vsp, obj_platform_regular))
{
	while(!place_meeting(x, y+sign(vsp), obj_collider_re)
	&& !place_meeting(x, y+sign(vsp), obj_platform_regular)) 
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//animation
if(hsp > 0)
{
	sprite_index = spr_reflection_run;
	image_xscale = 1;
}
else if(hsp < 0)
{
	sprite_index = spr_reflection_run;
	image_xscale = -1;
}
else if(hsp == 0)
{
	sprite_index = spr_reflection_idle;
}