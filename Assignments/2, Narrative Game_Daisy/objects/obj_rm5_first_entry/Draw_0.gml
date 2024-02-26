//draw text
if(txt_draw == true)
{
	draw_set_halign(fa_center);
	draw_set_font(font_2);
	draw_text(x, y, "...");
	timer ++;
	if(timer >= 120)
	{
		draw_text(x, y+50, "This is...");
		timer_2 ++;
		if(timer_2 >= 120)
		{
			draw_text(x, y+100, "A cemetery...");
			timer_3 ++;
			if(timer_3 >= 120)
			{
				instance_destroy();
			}
		}
	}
}