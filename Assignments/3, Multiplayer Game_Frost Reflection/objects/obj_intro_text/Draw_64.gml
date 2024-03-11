//set variables
draw_set_font(fnt_2);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_dkgray);

//draw text
var _len = string_length(text[text_current]);
if(char_current < _len)
{
	char_current += char_speed;
}

var _str = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y, _str);