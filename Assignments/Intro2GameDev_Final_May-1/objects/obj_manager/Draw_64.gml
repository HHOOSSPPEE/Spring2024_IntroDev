draw_set_font(countdown_font);
draw_set_color(c_white);

if(game_start)
{
	if(level_complete)
	{
		draw_text(gui_width - 350, 100, "New Level in: " + string(new_level_cd));
	}
}

for (var i = 0; i < obj_player._health; i++)
{
	var offset_x = 100;
	draw_sprite(spr_heart, 1, 50 + i*offset_x, 50);
}

if(win)
{
	draw_text(gui_width - 150, 100, "YOU WIN");
	draw_text(gui_width - 350, 200, "kinda impressive");
}

if (!game_start)
{
	draw_text(gui_width - 950, 100, "If game STUCK after countdown");
	draw_text(gui_width - 950, 200, "please force quit and restart");
	draw_text(gui_width - 950, 300, "WASD to move");
	draw_text(gui_width - 950, 400, "LMB to shoot");
	draw_text(gui_width - 950, 500, "1,2,3,4 to Switch Weapons");
	draw_text(gui_width - 950, 600, "Space to Start Game");
}

if(obj_player.state = playerState.Dead)
{
	draw_text(gui_width - 450, 600, "Ouch, Space to Restart");
}