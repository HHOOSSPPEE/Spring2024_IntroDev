/// @description Insert description here
// You can write your code in this editor


//inputs
var key_rt = keyboard_check(vk_right);
var key_lft = keyboard_check(vk_left);
var key_jump = keyboard_check_pressed(vk_space);
var key_on_stairs = keyboard_check_pressed(vk_up);
var key_down_stairs = keyboard_check_pressed(vk_down);
var key_attack = keyboard_check_pressed(ord("Z"));


//sprite direction

image_xscale = sprite_dir;

if(key_lft)
{
	sprite_dir = 1;
}else if(key_rt)
{
	sprite_dir = -1;
}



//ckeck if its on stairs
//meet_trigger to enter and exit on_stairs stage 
if(meet_trigger == true)
{
	is_on_stairs = true;
	
}else
{
	is_on_stairs = false;
}
//check the onstairs stage
if(place_meeting(x,y,obj_stairs_start))
{
	
	if((place_meeting(x,y,obj_stairs_up)&& key_on_stairs) or (place_meeting(x,y,obj_stairs_down)&& key_down_stairs))
	{
		var start = instance_nearest(x,y,obj_stairs_start);
		x = start.x;
		y = start.y;
		meet_trigger = true;
	}
}
if(meet_trigger = true)
 { 
	var ground = instance_nearest(x, y, obj_wall);
	
	if(y ==ground.y )
	{
		meet_trigger = false;	
	}
}

//check attacking stage
if(key_attack && is_grounded)
{
	
	is_attacking = true;
	
}


if(is_on_stairs == true)
{
	
	var  key_climb_up = keyboard_check(vk_up);
	var key_climb_down = keyboard_check(vk_down);
	player_climb_x = (key_climb_up - key_climb_down)*player_climb_xspd;
	player_climb_y = (key_climb_up - key_climb_down)*player_climb_yspd;
	
	x+=player_climb_x;
	y+= player_climb_y;
	
	//get off the stairs
	//meet_trigger = true;
	//if x = obj_stairs_start.x, y = obj_stairs_start.y
	
	//animation
	if(key_climb_down){
		sprite_index = spr_player_stairs_decend;
	}else if(key_climb_up){
		sprite_index = spr_player_stairs_acend;
	}
	
	
	
}

else if (is_on_stairs == false)//move when not on stairs
{
	if (is_attacking = true)
	{
		
			sprite_index = spr_player_attack_stand;
		
			if(image_index > 2 and image_index <= 3)
			{
				//change the dir of spawning weapon collider
				var imgscale = obj_player.image_xscale;
				switch(imgscale)
				{
					case 1: instance_create_depth(x - sprite_width/2+5, y - sprite_height/2-3,0,obj_weapon_collider);
					case -1: instance_create_depth(x -sprite_width/2-5 , y - sprite_height/2-3,0,obj_weapon_collider);
				}
				//instance_create_depth(x - sprite_width/2+5, y - sprite_height/2-3,0,obj_weapon_collider);
			}
		
			if(image_index >= 3)
			{
				instance_destroy(obj_weapon_collider);
				is_attacking = false;
			}
	
	}
	
	else 
	{	
		//where r we going
		player_x = (key_rt - key_lft) * player_spd;
		player_y = player_y + grav;

		//animation
		if(player_x !=0 && is_grounded)
		{
			sprite_index = spr_player_walking;
		}
		else if (player_x ==0 && is_grounded)
		{
			sprite_index = spr_player_idle;
		}
		else if(!is_grounded)
		{
			sprite_index = spr_player_jump;
		}


		//check if we can jump
		if((is_grounded-- > 0) && key_jump) 
		{
			player_y = player_jump_spd;
			is_grounded = 0;
			
		}

  
		//collision checking
		//check x 
		if (place_meeting((x+player_x),y,obj_wall))//if touching the wall
		{
			while(abs(player_x)>0.1)//if the player is moving
			{
				player_x *= 0.5;
				if(place_meeting((x+player_x),y,obj_wall))
				{
					x += player_x;
				}//slowing the player down
			}
			player_x = 0;
	
		}

		x += player_x;

		//check y
		if (place_meeting(x,y+player_y,obj_wall))//if touching the wall
		{
			if(player_y>0)
			{
				is_grounded = 6;// isgrnded not a boolean for a buffer for player to jump, game feel wise
			}
	
			while(abs(player_y)>0.1)
			{
				player_y *=0.5;
				if(!place_meeting(x,y+player_y,obj_wall))
				{
					y+= player_y;
				}
			}
			player_y = 0;
		}

		y += player_y;

		}
	}

//COLLIDE WITH ENEMIES
if(place_meeting(x,y,obj_enemy) && is_invincible = false)
{
	player_health -=1
	is_invincible = true;
	
}
if(is_invincible){
	invincible_timer++;
	if (visible == true) visible = false;
	else visible = true;
	alarm[0] = 50;
	if(invincible_timer>=invincible_timer_max)
	{
		is_invincible = false;
	}
}

