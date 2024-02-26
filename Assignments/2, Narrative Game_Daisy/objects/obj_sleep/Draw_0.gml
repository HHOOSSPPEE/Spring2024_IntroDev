//display text
if(draw_txt == true)
{
	draw_set_halign(fa_left);
	draw_set_font(font_2);
	draw_text(x, y, "You need a sleep.");
	timer ++;
	if(timer >= 120)
	{
		draw_text(x, y+50, "Lie on the rug and press 'e'.");
	}
}
	