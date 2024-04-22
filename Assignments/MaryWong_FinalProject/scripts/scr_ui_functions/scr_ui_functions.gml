function scr_text_ui(_text)
{
	text[page_number] = _text;
	page_number ++;
}

function create_ui_textbox(_text_id)
{
	with (instance_create_depth(0,0,-9999, obj_ui_textbox))
	{
		scr_ui_text(_text_id);
	}
}