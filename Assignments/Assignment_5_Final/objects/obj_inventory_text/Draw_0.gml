draw_set_font(fnt_main);
draw_set_halign(fa_left);
draw_set_color(c_black);

if (obj_player.inventory_open && instance_exists(obj_inventory_sell))
{
	draw_sprite(farmer_sprite, 0, obj_inventory_sell.x - 26, obj_inventory_sell.y - 24);
	draw_text(obj_inventory_sell.x + 32, obj_inventory_sell.y + 2, farmer_name);
	draw_text(obj_inventory_sell.x + 32, obj_inventory_sell.y + 15, farmer_sell);
}