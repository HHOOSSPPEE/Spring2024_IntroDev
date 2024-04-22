/// @param text
function scr_text(_text)
{
	text[page_number] = _text;
	page_number ++;
}

/// @param option
/// @param link_id
function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number ++;
}

/// @param text
/// @param money
/// @param readers
/// @param production
function scr_text_effect(_text, _money, _readers, _prod)
{
	text[page_number] = _text;
	page_number ++;
	
	global.money += _money;
	global.readers += _readers;
	global.production += _prod;
}

/// @param text_id
function create_textbox(_text_id)
{
	with (instance_create_depth(0,0,-9999, obj_textbox))
	{
		scr_game_text(_text_id);
	}
}