//days 
draw_text_ext_transformed(20, 20, "DAY " + string(global.days), 10, 100, 6, 6, 0);

//current time
draw_text_ext_transformed(200, 20, string(timer_hour) + " " + string(isWhen), 10, 100, 6, 6, 0);

//money
draw_text_ext_transformed(610, 20, "COINS - $ " + string(global.coins), 10, 100, 6, 6, 0);

if (isfaint)
{
	show_debug_message("hi");
	draw_set_color(c_white);
	draw_text_ext_transformed(room_width/2 + 20, room_height/2, "You passed out!", 10, 100, 6, 6, 0);
}

draw_set_color(c_black);