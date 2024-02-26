//draw text
if(txt_draw == true)
{
	draw_set_halign(fa_left);
	draw_set_font(font_2);
	draw_text(x, y, "...");
	timer ++;
	if(timer >= 120)
	{
		draw_text(x, y+50, "...Who am I?");
		timer_2 ++;
		if(timer_2 >= 120)
		{
			draw_text(x, y+100, "Is this...my home?");
			timer_3 ++;
			if(timer_3 >= 120)
			{
				instance_destroy();
			}
		}
	}
}