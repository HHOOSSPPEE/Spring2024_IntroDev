var _len = string_length(text[text_current]);
if(char_current < _len)
{
	char_current = _len;
}
else
{
	text_current += 1;
	if(text_current > text_last)
	{
		room_goto(rm_2);
	}
	else
	{
		text[text_current] = scr_intro(text[text_current], text_width);
		char_current = 0;
	}
}