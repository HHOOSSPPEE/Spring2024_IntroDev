accept_key = keyboard_check_pressed(ord("X"));

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 450;

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
//if (draw_char < text_length[page])
//{
//	draw_char += text_speed;
//	draw_char = clamp(draw_char, 0, text_length[page]);
//}

//flip through pages
if (accept_key) ^^! Interactable(id, 64)
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

text_image += text_image_speed;
text_spr_w = sprite_get_width(text_spr);
text_spr_h = sprite_get_height(text_spr);

var _text_space = 50;
var _text_bord = 24;
var _text_w = string_width(text[page]) + _text_bord*2;
var _text_centering = (_text_space - string_height(text[page]))/2

var _textb_x = textbox_x + ((camera_get_view_width(view_camera[0]) - _text_w))/2;
var _textb_y = textbox_y;

draw_sprite_ext(text_spr, text_image, _textb_x, _textb_y, _text_w/text_spr_w, (_text_space-1)/text_spr_h, 0, c_white, 1);
draw_text(_textb_x + _text_bord, _textb_y + _text_centering, text[page]);




