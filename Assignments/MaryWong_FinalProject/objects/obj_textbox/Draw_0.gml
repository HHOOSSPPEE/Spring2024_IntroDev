accept_key = keyboard_check_pressed(vk_space);

textbox_x = camera_get_view_x(view_camera[0]) + 65;
textbox_y = camera_get_view_y(view_camera[0]) + 350;

//setup
if (setup == false)
{
	setup = true;
	draw_set_font(font_1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through the pages
	for (var p = 0; p < page_number; p++)
	{
		//find how many characters are on each page and store that number in the "text_length" array
		text_length[p] = string_length(text[p]);
		
		//get the x position for the textbox
			//no character (center the textbox)
			text_x_offset[p] = 44;
	}
}

//typing the text
if (draw_char < text_length[page])
{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
}

//flip through pages
if (accept_key)
{
	//if the typing is done
	if (draw_char == text_length[page])
	{
		//next page
		if (page < page_number-1)
		{
			page ++;
			draw_char = 0;
		}
		//destroy textbox
		else
		{
			//link text for options
			if (option_number > 0)
			{
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
	//if not done typing
	else
	{
		draw_char = text_length[page];
	}
}

//draw the textbox
var _textb_x = textbox_x + text_x_offset[page];
var _textb_y = textbox_y;
text_image += text_image_speed;
text_spr_w = sprite_get_width(text_spr);
text_spr_h = sprite_get_height(text_spr);
//back of the textbox
draw_sprite_ext(text_spr, text_image, _textb_x, _textb_y, textbox_width/text_spr_w, textbox_height/text_spr_h, 0, c_white, 1);

//options
if (draw_char == text_length[page] && page == page_number -1)
{
	
	//option selection
	option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	option_pos = clamp(option_pos, 0, option_number - 1);
	
	
	//draw the options
	var _op_space = 38;
	var _op_bord = 8;
	var _selector_space = 42;
	for (var op = 0; op < option_number; op++)
	{
		//the option box
		var _o_w = string_width(option[op]) + _op_bord*2;
		draw_sprite_ext(text_spr, text_image, _textb_x + _selector_space, _textb_y - _op_space * option_number + _op_space * op, _o_w/text_spr_w, (_op_space-1)/text_spr_h, 0, c_white, 1);
		
		//the selector
		if (option_pos == op)
		{
			draw_sprite(spr_textbox_selector, 0, _textb_x, _textb_y - _op_space * option_number + _op_space * op)
		}
		
		//the option text
		draw_text(_textb_x + _selector_space + _op_bord, _textb_y - _op_space*option_number + _op_space*op + 5, option[op]);
	}
}

//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);
draw_text_ext(_textb_x + border, _textb_y + border, _drawtext, line_sep, line_width);






