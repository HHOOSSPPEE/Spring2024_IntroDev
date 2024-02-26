//check interaction
if(place_meeting(x, y, obj_player))
{
	timer ++;
	if(global.rug_taken == true)
	{
		obj_txt_box.Activate_Text_Box(line_3);
		return;
	}
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
}