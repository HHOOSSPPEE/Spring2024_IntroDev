if(conversing)
{
	draw_set_font(obj_manager.future_dialogue);
	switch(dialogue_location)
	{
		case 1:
			if(keyboard_check_pressed(ord("E")))
			{
				dialogue_location++;
			}
			break;
		case 2:
			draw_text(dialogue_x, dialogue_y, dialogue_1);
			if(keyboard_check_pressed(ord("E")))
			{
				dialogue_location++;
			}
			break;
		case 3:
			draw_text(dialogue_x, dialogue_y, dialogue_2);
			if(keyboard_check_pressed(ord("E")))
			{
				dialogue_location++;
			}
			break;
		case 4:

			draw_text(dialogue_x, dialogue_y, dialogue_3);
			if(keyboard_check_pressed(ord("E")))
			{
				dialogue_location++;
			}
			break;
		default:
			obj_player.conversation = false;
			obj_screen.interactable = true;
			spoken_to = true;
			conversing = false;
			break;
	}
}