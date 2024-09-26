/// @description Insert description here
// You can write your code in this editor


if(collided)
{
	if(y < height)
	{
		y += obj_player.flag_drop_speed;
	}
}

if(y > height)
{
	y = height;
}