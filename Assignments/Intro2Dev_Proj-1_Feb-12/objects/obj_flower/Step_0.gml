if(y >= dest)
{
	move_cd--;
	if(move_cd <=0)
	{
		y--;
		move_cd = move_timer;
	}
}