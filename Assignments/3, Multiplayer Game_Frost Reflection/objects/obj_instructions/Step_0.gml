//display text after 3 sec
timer ++;
if(timer >= 180)
{
	visible = true;
}

//press space to start the game
if(keyboard_check(vk_space))
{
	room_goto(rm_3);
}