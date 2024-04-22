if (hp < hp_max)
{
	draw_sprite_ext(spr_printer_health_bg, 0, healthbar_x, healthbar_y, _xscale, _yscale, 0, c_white, 1);
	draw_sprite_stretched(spr_printer_health_bar, 0, healthbar_x-6, healthbar_y, (hp/hp_max * healthbar_width), healthbar_height)
	draw_sprite_ext(spr_printer_health_border, 0, healthbar_x, healthbar_y, _xscale, _yscale, 0, c_white, 1);
}