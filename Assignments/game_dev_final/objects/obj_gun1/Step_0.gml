// gun follows the player with slight delay
if (obj_enemy1.should_shoot = true)
{
	var pd = point_direction(x,y,obj_player.x + 32,obj_player.y + 32);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), 10) * sign(dd);
}

//if gun exists it will shoot bullets in direction of player

if (obj_enemy1.should_shoot = true)
{
	if(instance_exists(obj_gun1) && (timer < 0))
	{
		instance_create_layer(x,y,"Bullets1",obj_bullet_enemy);
		timer = 50;
		with(obj_bullet_enemy)
		{
			speed = 10;
			direction = obj_gun1.image_angle;
			image_angle = direction;
		}
	}
}

if image_angle < -100
{
	global.turn = true;
	
}

timer = timer -1
