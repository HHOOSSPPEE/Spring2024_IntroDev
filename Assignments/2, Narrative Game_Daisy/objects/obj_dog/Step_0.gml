//check interaction
if(place_meeting(x, y, obj_player))
{
	timer ++;
	global.talk_with_dog = true;
	if(global.bone_taken == true)
	{
		obj_txt_box.Activate_Text_Box(line_5);
		obj_bone_b.visible = true;
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
		timer = 0;
		timer_2 = 0;
		timer_3 = 0;
		timer_4 = 0;
	}
}

if(obj_bone_b.visible == true && global.yarn_taken == false)
{
	obj_yarn.visible = true;
}