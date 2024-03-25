
draw_sprite_stretched(
	spr_playerMoveRight,
	0,
	x - 6,
	y - 6,
	6 * 72,
	2 * 72
);

for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	var sx = x + (i mod 6) * 72;
	var sy = y + (i div 6) * 72;
	
	draw_sprite(spr_playerIdleRight, 0, sx, sy);
	
	if(inventory[i] != -1)
	{
		//draw coresponding sprite here
		//draw_sprite(spr_items, inventory[i], sx,sy);
		
	}
	//or
	//ds_map_find_first 
}