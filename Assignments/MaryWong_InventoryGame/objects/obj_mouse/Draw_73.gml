if (itemDrag != -1)
{
	draw_set_alpha(0.5);
	draw_sprite(spr_items, itemDrag, mouse_x, mouse_y);
	draw_set_alpha(1.0);
}