//show description
if(place_meeting(x, y, obj_player) && !taken)
{
	timer ++;
	obj_txt_box.Activate_Text_Box(line_1);
	
	if(timer >= line_time)
	{
		obj_txt_box.Activate_Text_Box(line_2);
		timer_2 ++;
	}
	
	if(timer_2 >= line_time)
	{
		timer = 0;
		timer_2 = 0;
	}
	
	//pick up
	if(keyboard_check(ord("E")))
	{
		taken = true;
		global.flowers_taken = true;
	}
}

if(global.flowers_taken = true)
{
	visible = false;
}