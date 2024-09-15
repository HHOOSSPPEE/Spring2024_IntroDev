if (trigger)
{
	image_index = 0;
}

if (trigger = true)
{
	image_index = 1;
}

if mouse_check_button_pressed(mb_left)
{
    if collision_point(mouse_x, mouse_y, id, true, false)
	{
		room_goto_next();
		trigger = true;
    }
}