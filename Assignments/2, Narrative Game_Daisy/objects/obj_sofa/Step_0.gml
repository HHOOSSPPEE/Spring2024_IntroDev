//check interaction
if(place_meeting(x, y+20, obj_player))
{
	if(global.yarn_taken == true)
	{
		obj_txt_box.Activate_Text_Box(line_2);
		return;
	}
	obj_txt_box.Activate_Text_Box(line_1);
}