for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	var sx = 145 + (i mod 6) * 114;
	var sy = 535;
	
	draw_sprite(spr_blank, 0, sx, sy);
	
	if(inventory[i] != -1)
	{
		//draw coresponding sprite here
		draw_sprite_ext(spr_food, inventory[i], sx,sy, 5, 5, 0, c_white, 1);
	}
}
