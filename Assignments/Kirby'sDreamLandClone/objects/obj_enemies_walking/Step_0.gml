x -= walksp;

if (place_meeting(x,y, obj_enemy_collider)) 
{
	walksp = -1*walksp;
	//image_xscale = -1;
}