//movement
y -= spd;
if(place_meeting(x, y+5, obj_wall) || y >= room_height-40 || y <= 40)
{
	spd *= -1;
}

//poison
if(obj_player.poisoned == false 
&& place_meeting(x, y, obj_player))
{
	obj_player.poisoned = true;
	obj_player.spd -= 2;
}

//hurt
if(can_hurt == true 
&& place_meeting(x, y, obj_player))
{
	audio_play_sound(snd_hurt, 1, false);
	obj_player.hp -= 1;
	can_hurt = false;
}

//safe time
if(can_hurt == false)
{
	timer ++;
	if(timer >= safe_time)
	{
		can_hurt = true;
		timer = 0;
	}
}

//capture
if(obj_player.net_equipped == true 
&& (place_meeting(x+10, y, obj_player) || place_meeting(x-10, y, obj_player)
|| place_meeting(x, y+10, obj_player) || place_meeting(x, y-10, obj_player))
&& keyboard_check_pressed(vk_space))
{
	audio_play_sound(snd_player_attack,1, false);
	hp -= obj_player.damage;
}

if(hp <= 0)
{
	instance_destroy();
	obj_player.exp_ += 20;
}