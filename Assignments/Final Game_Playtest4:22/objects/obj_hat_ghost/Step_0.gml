//movement
x -= spd;
if(place_meeting(x+5, y, obj_wall) || x <= 40)
{
	spd *= -1;
	image_xscale *= -1;
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
&& place_meeting(x+10, y+10, obj_player) 
&& keyboard_check_pressed(vk_space))
{
	hp -= 1;
}

if(hp = 0)
{
	instance_destroy();
	obj_player.exp_ += 20;
}