if (global.suitcase = false)
{
	visible = false;
}
else
{
	visible = true;
}

if place_meeting(x,y,obj_ant) && global.suitcase = true
{
	room_goto(targetRoom);
	obj_ant.x = targetX;
	obj_ant.y = targetY;
}