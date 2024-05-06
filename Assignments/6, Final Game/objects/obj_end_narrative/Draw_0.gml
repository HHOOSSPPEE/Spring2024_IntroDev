//display
if(room == rm_4)
{
	timer ++;
	obj_txt_box_3.Activate_Text_Box(line_1);	
	if(timer >= line_time)
	{
		obj_txt_box_3.Activate_Text_Box(line_2);
		timer_2 ++;
	}
	
	if(timer_2 >= line_time)
	{
		obj_txt_box_3.Activate_Text_Box(line_3);
		timer_3 ++;
	}
	
	if(timer_3 >= line_time+50)
	{
		game_restart();
	}
}