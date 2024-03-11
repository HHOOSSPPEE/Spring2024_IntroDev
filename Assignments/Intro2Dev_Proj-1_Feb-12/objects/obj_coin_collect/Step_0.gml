/// @description Insert description here
// You can write your code in this editor

if(top_end_reach == false)
{
	if(y > top_end)
	{
		y-=2;
	}
	else
	{
		top_end_reach = true;
	}
}
else
{
	y+=2;
	if(y >= btm_end)
	{
		obj_manager.coin_count++;
		instance_destroy();
	}
}