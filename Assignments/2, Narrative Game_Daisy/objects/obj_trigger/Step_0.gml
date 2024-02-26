//check interaction
if(place_meeting(x, y, obj_player))
{
	timer ++;
	if(global.talk_with_shadow == true)
	{
		obj_txt_box.Activate_Text_Box(line_5);
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
		obj_txt_box.Activate_Text_Box(line_3);
		timer_3 ++;
	}
	
	if(timer_3 >= line_time)
	{
		obj_txt_box.Activate_Text_Box(line_4);
		timer_4 ++;
	}
	
	if(timer_4 >= line_time)
	{
		global.talk_with_shadow = true;
		timer = 0;
		timer_2 = 0;
		timer_3 = 0;
		timer_4 = 0;
	}
}

if(global.talk_with_shadow == true 
&& global.rug_taken == false)
{
	obj_rug_w.visible = true;
}

