for (var i = 0; i < array_length(inventory); i++)
{
	var sx = 150;
	var sy = 539;
	var col = c_white;
	
	//icon
	draw_sprite_ext(inventory[i].sprite, 0, sx + sep*i, sy, 5, 5, 0, c_white, 1);
	
	//description
	if (selected_item == i)
	{
		draw_set_color(c_white);
		draw_text_ext_transformed(sx - 30, sy + 140, inventory[i].description, 100, 100, 5, 5, 0)
		draw_text_ext_transformed(sx + 600, sy + 140, "$ " + string(inventory[i].price), 100, 100, 5, 5, 0)
	}
}



