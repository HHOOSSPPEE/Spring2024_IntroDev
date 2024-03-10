if (place_meeting(x, y, obj_players))
{
	if (room == rm_main)
	{
		obj_textbox.text = "+ speed\n - health";
	}
	else if (room == rm_room2)
	{
		obj_textbox.text = "+ invincibility\n - health";
	}
	else if (room == rm_room3)
	{
		obj_textbox.text = "invincible\n - health";
	}
	else if (room == rm_room4)
	{
		obj_textbox.text = "+ royalty\n - companion";
	}

	obj_textbox.visible = true;
}
else {obj_textbox.visible = false;}	