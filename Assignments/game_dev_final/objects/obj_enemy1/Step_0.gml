//gun will be attached to the enemy
obj_gun1.x=x;
obj_gun1.y=y-25;

//enenmy can not see the player through walls
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
	//destroys specific bullet that collided
	var _inst = instance_place(x,y,obj_bullet)
	
	with(_inst)
	{
		instance_destroy();
	}
	//then destroys self
	global.counter += 1;
	instance_destroy(obj_gun1);
	instance_destroy();
}

//turns out if it sees player
if global.turn = true
{
	image_index = spr_enemy1;
	image_xscale = -1;
}
else
{
	image_index = spr_enemy1;
	image_xscale = 1;
}