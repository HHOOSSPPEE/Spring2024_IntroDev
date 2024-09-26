/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y+2, obj_player))
{
	collided = true;
	obj_player.move_y = 0;
}


if(collided)
{
	
	if(moved <= move_up)
	{
		y -= move_speed;
		moved += move_speed;
	}
	else if(moved >= move_up)
	{
		if(move_up != -1)
		{
			move_up -= move_speed;
			y += move_speed;
		}
	}
	
	if(count == 1)
	{
		instance_create_layer(x, y, "Instances", obj_coin_collect);
		count--;
	}
}

if(moved != 0 && move_up <= -1)
{
	sprite_index = spr_revealedtile;
}