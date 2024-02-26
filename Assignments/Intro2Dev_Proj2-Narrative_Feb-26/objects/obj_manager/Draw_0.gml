depth = -11;

if(instruction)
{
	draw_set_font(future_ui);
	draw_text(obj_player.x + offset_x, obj_player.y + offset_y, "Press E to Interact");
}

if(obj_player.conversable)
{
	draw_set_font(future_ui);
	draw_text(obj_player.x + offset_x, obj_player.y + offset_y, "Press E to Speak");
}