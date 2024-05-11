
if (place_meeting(x,y, obj_player))
{
	 hp -= 1;
}

if (hp == 0)
{
	instance_destroy();
	global.exp ++;
}