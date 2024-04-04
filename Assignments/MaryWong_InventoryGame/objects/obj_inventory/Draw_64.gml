draw_sprite_stretched(
	spr_inventory,
	0,
	x-margin,
	y-margin,
	invWidth,
	invHeight
);

//surface_set_target(invSurface);
//draw_clear_alpha(0, 0);

for (var i = 0; i < INVENTORY_SLOTS; i++)
{
	var xx = x + (i mod rowLength) * (sprite_get_width(spr_slot) + slotSeparation) + (slotSeparation/2);
	var yy = y + (i div rowLength) * (sprite_get_height(spr_slot) + slotSeparation) + (slotSeparation/2) + scrolling_y;
	var hover = (obj_mouse.inventoryHover == id) && (obj_mouse.slotHover == i)
	
	draw_sprite(spr_slot, hover, xx, yy);
	
	
	if (inventory[i] != -1)
	{
		var alpha = 1.0;
		if (obj_mouse.inventoryDrag == id) && (obj_mouse.slotDrag == i) alpha = 0.5;
		draw_set_alpha(alpha);
		
		//draw corresponding sprite here
		draw_sprite(spr_items, inventory[i], xx,yy);
		draw_set_alpha(1.0);
		
	}
}
//surface_reset_target();
//draw_surface(invSurface, x-margin,y-margin);