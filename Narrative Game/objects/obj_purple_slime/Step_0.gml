//conversation
if (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height &&
	mouse_check_button_pressed(1))
{
	var sword_found = false;
	var key_found = false;
	
	for (var i = 0; i < ds_list_size(obj_avatar.inventory); i++)
	{
		if (obj_avatar.inventory[|i].item_name == "magic sword")
		{
			sword_found = true;
		}
		if (obj_avatar.inventory[|i].item_name == "key")
		{
			key_found = true;
		}
	}
	
	if (sword_found && key_found)
	{
		obj_text_box.activate_text_box("Just a reminder, the house may rewind your time...");
		return;
	}
	
	obj_text_box.activate_text_box("Only the one with the key and a magic sword can get in.");
}

