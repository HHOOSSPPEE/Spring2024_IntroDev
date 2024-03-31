if (keyboard_check(vk_anykey))
{
	key_pressed = true;
}

if (key_pressed && visible)
{
	timer++
	{
		if (timer > timer_max)
		{
			visible = false;
			timer = 0
		}
	}
}