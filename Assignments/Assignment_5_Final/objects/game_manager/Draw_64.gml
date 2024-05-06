//days 
draw_text_ext_transformed(20, 20, "DAY " + string(global.days), 10, 100, 6, 6, 0);

//current time
draw_text_ext_transformed(200, 20, string(timer_hour) + " " + string(isWhen), 10, 100, 6, 6, 0);

//money
draw_set_halign(fa_right);
draw_text_ext_transformed(880, 20, "COINS $ " + string(round(global.coins)), 10, 100, 6, 6, 0);
draw_set_halign(fa_left);

if (isfaint)
{
	draw_set_color(c_white);
	draw_text_ext_transformed(room_width/2 + 10, room_height/2, "You passed out!", 10, 100, 6, 6, 0);
}

draw_set_color(c_black);

//keys
for (var i = 0; i < array_length(obj_inventory_key.key_inventory); i++)
{
	var ksx = 760;
	var ksy = 70;
	var ksep = 50;
	draw_sprite_ext(obj_inventory_key.key_inventory[i].sprite, 0, ksx, ksy + ksep*i, 5, 5, 0, c_white, 1);
	
	if (obj_inventory_key.key_inventory[i].name == "Yellow Key")
	{
		global.yellowKey = true;
	}
	else if (obj_inventory_key.key_inventory[i].name == "Red Key")
	{
		global.redKey = true;
	}
	else if (obj_inventory_key.key_inventory[i].name == "Blue Key")
	{
		global.blueKey = true;
	}
}