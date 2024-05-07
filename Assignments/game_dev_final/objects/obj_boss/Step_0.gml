//gun will be attached to the player
obj_gun3.x=x;
obj_gun3.y=y-25;

//cant see player through walls
if (collision_line(x,y,obj_player.x,obj_player.y,obj_wall,false,true))
{
	should_shoot = false;
}
else
{
	should_shoot = true;
}

//collision with bullet
if place_meeting(x,y,obj_bullet)
{
	//subtract boss health
	boss_health -= 1;
	
	//destroys specific bullet that collided
	var _inst = instance_place(x,y,obj_bullet)
	
	with(_inst)
	{
		instance_destroy();
	}
}

if (boss_health <= 0)
{
	global.counter +=1
	instance_destroy(obj_gun3);
	instance_destroy();
}

//bounces off walls - horizontal check
if place_meeting(x + lengthdir_x(speed+1, direction), y, obj_wall)
{
	direction = direction + irandom_range(90,105);
}

//vertical check
if place_meeting(x, y + lengthdir_y(speed+1, direction), obj_wall)
{
	direction = direction + irandom_range(90,105);
}