// gun follows the player with slight delay
if (obj_boss.should_shoot = true)
{
	var pd = point_direction(x,y,obj_player.x + 32,obj_player.y + 32);
	var dd = angle_difference(image_angle, pd);
	image_angle -= min(abs(dd), 10) * sign(dd);
}

//if gun exists it will shoot bullets in direction of player
if (obj_boss.should_shoot = true)
{
	if(instance_exists(obj_gun3) && (bullet_counter < 10))
	{
		var _bullet = instance_create_layer(x,y,"Bullets1",obj_bullet_boss);
		bullet_counter += 1;
		
		with(_bullet)
		{
			speed = 10;
			direction = obj_gun3.image_angle;
			image_angle = direction;
		}
	}
}

if (timer = 100)
{
	bullet_counter = 0;
	timer = 0;
}
timer += 1;