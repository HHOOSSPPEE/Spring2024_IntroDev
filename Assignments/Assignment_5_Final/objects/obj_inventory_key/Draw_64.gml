for (var i = 0; i < array_length(inventory); i++)
{
	var sx = 600;
	var sy = 515;
	
	//icon
	draw_sprite_ext(inventory[i].sprite, 0, sx, sy + sep*i, 5, 5, 0, c_white, 1);
	
	draw_text_ext_transformed(sx - 450, sy + 20 + sep*i, inventory[i].description, 100, 100, 5, 5, 0)
	draw_text_ext_transformed(sx + 100, sy + 20 + sep*i, "$ " + string(inventory[i].price), 100, 100, 5, 5, 0)
	
	if (selected_item == i)
	{
		draw_set_color(c_white);
		draw_text_ext_transformed(sx - 450, sy + 20 + sep*i, inventory[i].description, 100, 100, 5, 5, 0)
		draw_text_ext_transformed(sx + 100, sy + 20 + sep*i, "$ " + string(inventory[i].price), 100, 100, 5, 5, 0)
	}
	else 
	{
		draw_set_color(c_black);
		draw_text_ext_transformed(sx - 450, sy + 20 + sep*i, inventory[i].description, 100, 100, 5, 5, 0)
		draw_text_ext_transformed(sx + 100, sy + 20 + sep*i, "$ " + string(inventory[i].price), 100, 100, 5, 5, 0)
	}

}




