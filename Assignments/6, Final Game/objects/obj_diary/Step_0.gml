//check interaction
if(place_meeting(x, y, obj_player) && visible = true)
{
	timer ++;
	obj_txt_box_2.Activate_Text_Box(line_1);
	
	if(timer >= line_time-100)
	{
		obj_txt_box_2.Activate_Text_Box(line_2);
		timer_2 ++;
	}
	if(timer_2 >= line_time-100)
	{
		obj_txt_box_2.Activate_Text_Box(line_3);
		timer_3 ++;
	}
	if(timer_3 >= line_time)
	{
		obj_txt_box_2.Activate_Text_Box(line_4);
		timer_4 ++;
	}
	if(timer_4 >= line_time)
	{
		timer = 0;
		timer_2 = 0;
		timer_3 = 0;
		timer_4 = 0;
	}
}