//movement of player in room 2
if(room == rm_2)
{
	if(keyboard_check(ord("W")) && y > 25 
	&& !place_meeting(x, y-5, obj_wall))
	{
		y -= spd;
		if(y < (obj_camera.y + obj_camera.view_height) - (200 + sprite_width))
		{
			obj_camera.y -= spd;
		}
	}
	if(keyboard_check(ord("A")) && x > 25 
	&& !place_meeting(x-5, y, obj_wall))
	{
		image_xscale = 1;
		x -= spd;
		if(x < (obj_camera.x + obj_camera.view_width) - (200 + sprite_width))
		{
			obj_camera.x -= spd;
		}
	}
	if(keyboard_check(ord("S")) && y < room_height-25
	&& !place_meeting(x, y+5, obj_wall))
	{
		y += spd;
		if(y > obj_camera.y + 200)
		{
			obj_camera.y += spd;
		}
	}
	if(keyboard_check(ord("D")) && x < room_width-25
	&& !place_meeting(x+5, y, obj_wall))
	{
		image_xscale = -1;
		x += spd;
		if(x > obj_camera.x + 200)
		{
			obj_camera.x += spd;
		}
	}
}

//movement of player in room 3
if(room == rm_3)
{
	if(keyboard_check(ord("W")) && y >= 40)
	{
		y -= spd;
	}
	if(keyboard_check(ord("A")) && x >= 40)
	{
		image_xscale = 1;
		x -= spd;
	}
	if(keyboard_check(ord("S")) && y <= room_height-40)
	{
		y += spd;
	}
	if(keyboard_check(ord("D")) && x <= room_width-40)
	{
		image_xscale = -1;
		x += spd;
	}
}

//poisoned
if(poisoned == true)
{
	spd = 3;
}
else if(poisoned == false)
{
	spd = 5;
}

//die
if(hp <= 0)
{
	game_restart();
}

//room 1 animation
if(room == rm_1)
{
	if(x == 576 && y <= 256 && y > 206)
	{
		y -= 1;
	}
	if(y == 206 && x <= 576 && x > 476)
	{
		x -= 1;
	}
	if(x == 476 && y >= 206 && y < 256)
	{
		y += 1;
	}
	if(y == 256 && x >= 476 && x < 576)
	{
		x += 1;
	}
}

//level up new sprite + ability
if(exp_ >= 30 && level_up_2 == false)
{
	audio_play_sound(snd_lvl_up, 1, false);
	obj_book.visible = true;
	lvl = 2;
	spd = 5;
	hp = 8;
	sprite_index = spr_player_2;
	poisoned = false;
	level_up_2 = true;
}
if(exp_ >= 80 && level_up_3 == false)
{
	audio_play_sound(snd_lvl_up, 1, false);
	obj_diary.visible = true;
	lvl = 3;
	spd = 5;
	hp = 15;
	damage = 2;
	sprite_index = spr_player_3;
	poisoned = false;
	obj_door.visible = true;
	level_up_3 = true;
}

//level 2 narrative display
if(lvl == 2)
{
	timer ++;
	obj_txt_box.visible = true;
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
		close = true;
	}
}

//power timer
if(lvl == 3 && room == rm_3)
{
	if(power_ > 0 && power_ready == false && use_power == false 
	&& obj_boss.state != EnemyState.Anne)
	{
		power_timer ++;
		if(power_timer >= power_time)
		{
			power_ -= 1;
			power_timer = 0;
		}
	}
	if(power_ == 0)
	{
		power_ready = true;
		power_ = 10;
	}
}

//super power
if(lvl == 3 && power_ready == true && instance_exists(obj_boss) && room = rm_3)
{
	if(keyboard_check_pressed(ord("Q")))
	{
		audio_play_sound(snd_lvl_up, 1, false);
		use_power = true;
		power_ready = false;
	}
}
//use
if(use_power == true)
{
	use_time ++;
	damage = 5;
	sprite_index = spr_player_super;
}
//stop
if(use_time >= 200)
{
	use_power = false;
	use_time = 0;
	damage = 2;
	sprite_index = spr_player_3;
}

//close text box
if(room == rm_2 && !place_meeting(x, y, obj_book) && !place_meeting(x, y, obj_diary))
{
	obj_txt_box_2.visible = false;
}

//no player in last room
if(room == rm_4)
{
	instance_destroy();
}