//pick up
if(place_meeting(x, y, obj_player) && !taken
&& keyboard_check(ord("E")))
{
	taken = true;
	global.yarn_taken = true;
}

if(global.yarn_taken = true)
{
	visible = false;
}