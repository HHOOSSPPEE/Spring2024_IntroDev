//get selected item
selected_item = -1;
for (var i = 0; i < array_length(inventory); i++)
{
	var sx = camera_get_view_x(view_camera[0]) + 22;
	var sy = camera_get_view_y(view_camera[0]) + 87 + sep/6 * i ;
	
	if (mouse_x > sx && mouse_x < sx + 113 && mouse_y > sy && mouse_y < sy + 9)
	{
		selected_item = i;
	}
}

//remove item
if (obj_player.isBuy)
{
	if (selected_item != -1)
	{
		if (global.coins >= inventory[selected_item].price)
		{
			//use an item
			if mouse_check_button_pressed(mb_left)
			{				
				global.coins -= inventory[selected_item].price
				array_push(key_inventory, inventory[selected_item]);
				array_delete(inventory, selected_item, 1);
			}
		}
	}
}

