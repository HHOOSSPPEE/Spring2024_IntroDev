//conversation
if (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height &&
	mouse_check_button_pressed(1))
{
	for (var i = 0; i < ds_list_size(obj_avatar.inventory); i++)
	{
		if (obj_avatar.inventory[|i].item_name == "star")
		{
			obj_text_box.activate_text_box(":D");
			return;
		}
	}
	
	obj_text_box.activate_text_box("I lost my star (; ;)");
}