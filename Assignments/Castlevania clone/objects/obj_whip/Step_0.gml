/// @description Insert description here
// You can write your code in this editor

/*if(place_meeting(x,y,obj_player))
{
	instance_destroy()
}*/

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

		
	