//get selected item
selected_item = -1;
for (var i = 0; i < array_length(inventory); i++)
{
	var sx = camera_get_view_x(view_camera[0]) + 22 + sep/6 * i;
	var sy = camera_get_view_y(view_camera[0]) + 87;
	
	if (mouse_x > sx && mouse_x < sx + 17 && mouse_y > sy && mouse_y < sy + 17)
	{
		selected_item = i;
	}
}

//remove item
if (obj_player.isSell)
{
	if (selected_item != -1)
	{
		//use an item
		if mouse_check_button_pressed(mb_left)
		{
			global.coins += inventory[selected_item].price;
			array_delete(inventory, selected_item, 1);
		}
	}
}


