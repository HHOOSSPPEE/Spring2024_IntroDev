// gun follows the player with slight delay
if (obj_enemy2.should_shoot = true)
{
	var pd = point_direction(x,y,obj_player.x + 32,obj_player.y + 32);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), 10) * sign(dd);
}

//if gun exists it will shoot bullets in direction of player

if (obj_enemy2.should_shoot = true)
{
	if(instance_exists(obj_gun2) && (timer < 0))
	{
		instance_create_layer(x,y,"Bullets1",obj_bullet_enemy);
		timer = 85;
		with(obj_bullet_enemy)
		{
			speed = 25;
			direction = obj_gun2.image_angle;
			image_angle = direction;
		}
	}
}

timer = timer -1