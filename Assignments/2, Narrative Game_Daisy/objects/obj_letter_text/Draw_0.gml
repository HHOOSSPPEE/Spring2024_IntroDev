//draw text
if(txt_draw == true)
{
	draw_set_halign(fa_center);
	draw_set_font(font_3);
	draw_text(x, y, "To My Beloved Kitty Daisy,");
	timer ++;
	if(timer >= 120)
	{
		draw_set_font(font_2)
		draw_text(x, y+100, "Choosing you was one of the best decisions of my life.");
		timer_2 ++;
		if(timer_2 >= line_time)
		{
			draw_text(x, y+150, "You taught me love without condition or boundaries.");
			timer_3 ++;
			if(timer_3 >= line_time)
			{
				draw_text(x, y+200, "You saved me, from endless loneliness.");
				timer_4 ++;
				if(timer_4 >= line_time)
				{
					draw_text(x, y+250, "Maybe someday, somewhere, we will meet again.");
					timer_5 ++;
					if(timer_5 >= line_time)
					{
						draw_set_font(font_3);
						draw_text(x, y+300, "I miss you so much...");
						timer_6 ++;
						if(timer_6 >= 300)
						{
							room_goto(rm_3_forest);
						}
					}
				}
			}
		}
	}
}