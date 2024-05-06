//state
//aggro check
if((instance_exists(obj_player)) 
&& (point_distance(x, y, obj_player.x, obj_player.y)) < aggroRadius
&& hp > 0)
{
	state = EnemyState.Chase;
}
if((instance_exists(obj_player)) 
&& (point_distance(x, y, obj_player.x, obj_player.y)) >= aggroRadius
&& hp > 0) //outside of aggro radius
{
	state = EnemyState.Idle;
}
//check hp
if(hp <= 0)
{
	state = EnemyState.Anne;
	can_hurt = false;
}

//carrying out the state
if(state == EnemyState.Idle)
{
	//idle animation
	sprite_index = spr_boss;
}
if(state == EnemyState.Chase)
{
	//run animation
	sprite_index = spr_boss;
	
	//move toward player xy
	x += (obj_player.x - x)/spd;
	y += (obj_player.y - y)/spd;
	
	//flip sprite
	if(x < obj_player.x)
		image_xscale = -1;
	else
		image_xscale = 1;
}
if(state == EnemyState.Anne)
{
	sprite_index = spr_anne;
	can_damage = false;
	if(place_meeting(x, y, obj_player))
	{
		room_goto(rm_4);
	}
}

//hurt
if(can_hurt == true 
&& place_meeting(x, y, obj_player))
{
	audio_play_sound(snd_hurt, 1, false);
	obj_player.hp -= damage;
	if(hp <= 10 && hp > 0 && obj_player.poisoned == false)
	{
		obj_player.poisoned = true;
	}
	can_hurt = false;
}

//safe time
if(can_hurt == false && state != EnemyState.Anne)
{
	timer ++;
	if(timer >= safe_time)
	{
		can_hurt = true;
		timer = 0;
	}
}

//angry phase
if(hp <= 10 && hp > 0)
{
	damage = 4;
	spd = 70;
	sprite_index = spr_boss_angry;
}

//capture
if(obj_player.net_equipped == true 
&& (place_meeting(x+20, y, obj_player) || place_meeting(x-20, y, obj_player)
|| place_meeting(x, y+20, obj_player) || place_meeting(x, y-20, obj_player))
&& keyboard_check_pressed(vk_space)
&& can_damage == true)
{
	audio_play_sound(snd_player_attack,1, false);
	hp -= obj_player.damage;
}