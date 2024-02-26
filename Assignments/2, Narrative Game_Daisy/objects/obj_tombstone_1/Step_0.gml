//check interactions
if(place_meeting(x, y, obj_player))
{
	timer ++;
	global.read_tombstone = true;
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

//leave flowers
if(global.read_tombstone == true && keyboard_check(ord("E")))
{
	obj_daisy.visible = true;
}

if(obj_daisy.visible == true)
{
	timer_3 ++;
	if(timer_3 >= 160)
	{
		room_goto(rm_end);
		obj_player.x = 600;
		obj_player.y = 1000;
	}
}