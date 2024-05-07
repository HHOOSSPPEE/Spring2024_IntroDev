//gun will be attached to the enemy
obj_gun2.x=x;
obj_gun2.y=y-25;

//enenmy can not see the player through walls
if (collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,true))
{
	should_shoot = false;
}
else
{
	should_shoot = true;
}

//bounces off walls
//horizontal check
if place_meeting(x + lengthdir_x(speed+1, direction), y, obj_wall)
{
	direction = direction + irandom_range(90,105);
}
//vertical check
if place_meeting(x, y + lengthdir_y(speed+1, direction), obj_wall)
{
	direction = direction + irandom_range(90,105);
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
	instance_destroy(obj_gun2);
	instance_destroy();
}