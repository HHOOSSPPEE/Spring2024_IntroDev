draw_set_color(c_black);
draw_set_font(Font1);

draw_text(x,y, text)

if (obj_inventory.gameOver) 
{
	draw_set_color(c_red);
	text = "You lose! Press R to Restart";
}