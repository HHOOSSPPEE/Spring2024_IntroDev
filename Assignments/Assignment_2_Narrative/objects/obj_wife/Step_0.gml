//if collide with player, make text visible
if (place_meeting(x, y, obj_player))
{
	obj_textbox.visible = true;
	obj_textbox.text = "Hey honey, I want to make cake. Can you go get 20 pieces of candy for me??";
	
	if (room == rm_end_succeed && global.cake == true)
	{
		obj_textbox.text = "Thanks! Look at this huge cake I made!";
	}
	else if (room == rm_end_fail && global.cake == false)
	{
		obj_textbox.text = "Man, you're hopeless. Let's divorce"
	}
	
	//change text if player dies
	else if (global.lives == 2)
	{
		obj_textbox.text = "Come on, 3 more tries";
	}
	else if (global.lives == 1)
	{
		obj_textbox.text = "It isn't that hard, you know?";
	}
	else if (global.lives == 0)
	{
		obj_textbox.text = "bruh.";
	}
}

else {obj_textbox.visible = false;}


//changing direction
if (obj_player.x > x)
{
	image_xscale = 1;
}
else {image_xscale = -1;}

	


