if(place_meeting(x,y,obj_mario) && !isDead)
{
	global.health -= 1;
	obj_mario.x = global.xposMario;
	obj_mario.y = global.yposMario;
}

if(place_meeting(x,y-5,obj_mario))
{
	sprite_index  = spr_enemy_dead;
	alarm[0] = 5;
	xspeed = 0;
	isDead = true;
}

if (place_meeting(x + (toRight - 0.5) * 2 * xspeed, y, obj_pipe))
{
    toRight = !toRight;
}

x += (toRight - 0.5) * 2 * xspeed;

