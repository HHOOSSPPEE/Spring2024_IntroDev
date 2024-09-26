if(place_meeting(x, y, obj_block))
{
	instance_destroy();
}

if(point_distance(x, y, starting_x, starting_y) > travel_distance)
{
	instance_destroy();
}