//get selected item

selected_item = -1;
for (var i = 0; i < array_length(inv); i ++)
	{	
	var _xx = screen_bord;
	var _yy = screen_bord + sep*i;

		
	if mouse_x > _xx && mouse_x < _xx + 16 && mouse_y > _yy && mouse_y < _yy + 16
		{
		selected_item = i;
		}
	}


if selected_item != -1
	{
		
		//use item
		if mouse_check_button_pressed(mb_left)
		{
			inv[selected_item].effect();
		}
		// drop item
		if mouse_check_button_pressed(mb_right) && inv[selected_item].can_drop == true
		{
			//get rid of item
				array_delete(inv, selected_item, 1)
		}
	}

//visibility
if visible = true is_visible = true
else is_visible = false
