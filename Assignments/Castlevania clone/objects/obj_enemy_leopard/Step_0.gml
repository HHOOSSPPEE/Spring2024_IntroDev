/// @description Insert description here
// You can write your code in this editor



range_left = camera_get_view_x(view_camera[0]); // Left boundary of the view
range_right = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - obj_player.sprite_width; // Right boundary of the view


player_x = sprite_dir*player_spd;
player_y = player_y + grav;

if(distance_to_object(obj_player)<=100){
	is_near_player = true;
}else{
	is_near_player = false;

}

if(is_near_player)
{
	
	sprite_dir = -sign(x - obj_player.x);
	if(y<=obj_player.y)
	{	
		
		player_y = player_jump_spd;	
		player_x = player_spd*sprite_dir;
	}
}
player_jump_spd+=grav;

if(x<range_left or x>range_right)
{
	stop_timer++;
}
if(stop_timer>=stop_timer_max)
{
	stop_timer = 0;
	player_x = 0;
}


//collision
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

		