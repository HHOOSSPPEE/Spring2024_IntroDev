x += ghost_speed * direct;

//Direction changes
if (x >= end_x || x <= start_x) 
{
    direct *= -1;
}


//conversation
if (mouse_x > x && mouse_x < x + sprite_width &&
	mouse_y > y && mouse_y < y + sprite_height &&
	mouse_check_button_pressed(1))
{
	obj_text_box.activate_text_box("This is ... our home ...");
}


if (place_meeting(x,y,obj_sword))
	{
		instance_destroy(self);
		audio_play_sound(snd_kill, 1, false);
	}