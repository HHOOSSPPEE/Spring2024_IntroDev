//bad ending
if mouse_check_button_pressed(mb_left) 
{
    if collision_point(mouse_x, mouse_y, id, true, false) && (global.exp < 3)
	{
		room_goto(rm_2);
		
    }
}

//good ending
if mouse_check_button_pressed(mb_left) 
{
    if collision_point(mouse_x, mouse_y, id, true, false) && (global.exp > 3) && (global.exp < 9)
	{
		room_goto(rm_3);
		
    }
}

//true ending
if mouse_check_button_pressed(mb_left) 
{
    if collision_point(mouse_x, mouse_y, id, true, false) && (global.exp == 10)
	{
		room_goto(rm_4);
		
    }
}