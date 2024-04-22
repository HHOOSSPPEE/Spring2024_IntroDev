if (position_meeting(mouse_x, mouse_y, id) && mouse_check_button_pressed(mb_left))
{
	create_textbox(text_id)
}

if(Interactable(id, 64)) 
{
	create_ui_textbox(text_id)
	if (obj_ui_textbox.accept_key) create_textbox(text_id);
	
}
