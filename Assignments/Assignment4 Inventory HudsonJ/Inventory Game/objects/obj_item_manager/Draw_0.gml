/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_inv);

for (var i = 0; i < array_length(inv); i ++)
	{	
		var _xx = screen_bord;
		var _yy = screen_bord;
		var _sep = sep;
		var _col = c_white;
	
	//icon
		draw_sprite(inv[i].sprite, 0 , _xx,_yy + _sep *i)
	
	// get selected color
		//if selected_item == i {_col = c_yellow;};
		//draw_set_color(_col);
	
	//name
		//draw_text(_xx + 16,_yy + _sep*i,inv[i].name)
	
	//description
		if selected_item ==i
		{
			draw_text_ext(18,175, inv[i].description, 10, 40);
		}
	//reset color to white
		draw_set_color(c_white);
	}


