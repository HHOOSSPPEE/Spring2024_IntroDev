//check score
if(global.score == 5)
{
	current = 1;
}
else if(global.score != 5)
{
	current = 0;
}

//restart
if(keyboard_check_pressed(vk_space))
{
	game_restart();
}