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

function statChange()
{
	if (global.money > obj_ui.prevMoney)
	{
		draw_set_color(c_green)
		draw_text(250, camera_get_view_y(0) + 20, "+" + string(global.money - obj_ui.prevMoney));
	}
	
	if (global.money < obj_ui.prevMoney)
	{
		draw_set_color(c_red)
		draw_text(150, camera_get_view_y(0) + 20, "-" + string(global.money - obj_ui.prevMoney));
	}
}