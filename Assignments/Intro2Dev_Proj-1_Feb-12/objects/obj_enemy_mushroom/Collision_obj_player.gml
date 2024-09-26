if(count ==1)
{
if(place_meeting(x, y - sprite_height-1, obj_player))
{
	death = true;
	other.kill = true;
	obj_manager._score += 100;
}
else
{
	other.damage = true;
}
count--;
}