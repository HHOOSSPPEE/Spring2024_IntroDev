if(item_full_trigger)
{
	draw_text(50, 75, "Inventory Full");
	text_onscreen_cd --;
	if(text_onscreen_cd <= 0)
	{
		text_onscreen_cd = text_onscreen_timer;
		item_full_trigger = false;
	}
}


draw_text(25, 50, string(_score) + " Dishes Completed");