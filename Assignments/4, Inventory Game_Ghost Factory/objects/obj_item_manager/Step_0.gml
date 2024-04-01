//get selected item
selected_item = -1;
for (var i = 0; i < array_length(inv); i++)
{
	var _xx = screen_border;
	var _yy = screen_border + sep*i;
	
	if(mouse_x > _xx-16 && mouse_x < _xx+16 
	&& mouse_y > _yy-16 && mouse_y < _yy+16)
	{
		selected_item = i;
	}
}

if(selected_item != -1)
{
	//use an item
	if(mouse_check_button_pressed(mb_left))
	{
		inv[selected_item].effect();
	}
	
	//drop an item
	if(keyboard_check_pressed(vk_backspace) && inv[selected_item].drop == true)
	{
		array_delete(inv, selected_item, 1);
	}
	
	//reorder
	if(keyboard_check_pressed(vk_up))
	{
		inventory_swap(selected_item, selected_item-1);
	}
	if(keyboard_check_pressed(vk_down))
	{
		inventory_swap(selected_item, selected_item+1);
	}
}