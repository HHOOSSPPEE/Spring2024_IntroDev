if (ifRun) 
{
	timer_min++
	if (timer_min%300 == 0)
	{
		timer_hour++;
	}
	
	if (timer_hour == 13)
	{
		timer_hour = 1;
	}
	
	if (timer_hour == 12 && current_image == 1)
	{
		isWhen = "PM";
	}
	
	if (timer_min > timer_min_max)
	{
		current_image++
		timer_min = 0;
	}
}


if (current_image == 4)
{
	ifRun = false;
	faint_timer++;
	
	isfaint = true;
	
	if (faint_timer > faint_timer_max)
	{
		room_restart();
		global.days++;
		global.coins = global.coins - (global.coins*.2);
	}
}


image_index = current_image;