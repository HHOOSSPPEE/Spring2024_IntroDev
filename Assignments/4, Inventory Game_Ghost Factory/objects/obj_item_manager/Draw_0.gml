//display hp, net
if(room != rm_1)
{
	draw_set_color(c_white)
	draw_text(20, room_height-32, "hp: "+string(obj_player.hp));
	if(obj_player.net_equipped == true)
	{
		draw_text(100, room_height-32, "Net Equipped. Approach ghost, press 'Space' to catch!");
	}
	if(obj_player.poisoned == true)
	{
		draw_text(20, room_height-64, "Poisoned.");
	}
	draw_text(room_width-200, room_height-32, "Ghosts Captured: "+string(obj_player.ghost_captured));
}

//displayinventory
if(visible == true)
{
	for (var i = 0; i < array_length(inv); i++)
	{
		var _xx = screen_border;
		var _yy = screen_border;
		var _sep = sep;
		var _col = c_white;
		
		//icon
		draw_sprite(inv[i].sprite, 0, _xx, _yy + _sep*i);
		
		//get selected color
		if(selected_item == i){_col = c_aqua;};
		draw_set_color(_col)
		
		//name
		draw_text(_xx + 20, _yy*.75 + _sep*i, inv[i].name);
		
		//description
		if selected_item == i{
		draw_text_ext(_xx+20, _yy + _sep*array_length(inv), inv[i].description, 12, 100);
		}
		
		//reset color
		draw_set_color(c_white);		
	}
}