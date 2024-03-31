//UI
draw_set_halign(fa_left);

if (place_meeting(x, y, obj_farmers))
{
	draw_sprite_ext(spr_spacebar, 0, 650, 800, 6, 6, 0, c_white, 1);
}

if (instance_exists(obj_inventory_sell))
{
	draw_set_color(c_white);
	draw_text_ext_transformed(180, 800, "SELL", 0, 20, 7, 7, 0);
	
	draw_sprite_ext(spr_r, 0, 100, 800, 3, 3, 0, c_white, 1);
}