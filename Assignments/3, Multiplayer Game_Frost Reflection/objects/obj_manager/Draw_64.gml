//score ui
draw_set_halign(fa_left);
draw_set_font(fnt_1);
draw_set_colour(c_gray);
draw_text(55, 40, "Score:");
draw_text(55, 80, string(global.score));

//game states
/*
enum GameState
{
	PlayerMenu;
	PlayerAttack;
	PlayerTakeDamage;
	EnemyAttack;
	EnemyTakeDamage;
}

global.GameState = GameState.PlayerMenu;