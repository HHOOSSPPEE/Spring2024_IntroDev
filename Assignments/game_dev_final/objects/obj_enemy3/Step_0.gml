//enenmy can not see the player through walls
if (collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,true))
{
	should_chase = false;
}
else
{
	should_chase = true;
}

//check if should chase player
if( should_chase == true)
{
	dir = point_direction(x,y, obj_player.x, obj_player.y);
	
	//get speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//collisions with wall or other enemies
	if (place_meeting (x + xspd, y, obj_wall) || (place_meeting(x + xspd , y, obj_enemy3)))
	{
		xspd = 0;
	}
	
	if (place_meeting (x, y + yspd, obj_wall) || (place_meeting(x, y + xspd, obj_enemy3)))
	{
		yspd = 0;
	}
	
	//moving
	x += xspd;
	y += yspd;
}

//collision with bullet
if place_meeting(x,y,obj_bullet)
{
	//destroys specific bullet that collided
	var _inst = instance_place(x,y,obj_bullet)
	
	with(_inst)
	{
		instance_destroy();
	}
	//then destroys self
	global.counter += 1;
	instance_destroy();
}