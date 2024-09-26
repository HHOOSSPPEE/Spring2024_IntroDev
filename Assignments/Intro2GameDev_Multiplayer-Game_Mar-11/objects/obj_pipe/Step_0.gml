/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x, y + 24, obj_biker_p1))
{
	teleport_cd--;
	if(teleport_cd <= 0)
	{
		obj_biker_p1.y -= 144;
		teleport_cd = teleport_timer;
	}
}
else if(place_meeting(x, y + 24, obj_cyborg_p2))
{
	teleport_cd--;
	if(teleport_cd <= 0)
	{
		obj_cyborg_p2.y -= 144;
		teleport_cd = teleport_timer;
	}
}