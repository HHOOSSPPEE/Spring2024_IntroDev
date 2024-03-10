var dist_p1 = distance_to_object(obj_p1);
var dist_p2 = distance_to_object(obj_p2);

var enemy_p1 = instance_nearest(obj_p1.x, obj_p1.y, obj_enemy2);
var enemy_p2 = instance_nearest(obj_p2.x, obj_p2.y, obj_enemy2);

//plays death animation
if (enemy_health < 0)
{
	dead_timer++
	sprite_index = spr_enemy2_die;
	if (dead_timer > dead_timer_max)
	{
		instance_destroy();
		dead_timer = 0;
	}
}
else {sprite_index = spr_enemy2;}

//executes if enemies still on screen
if instance_exists(obj_enemy2)
{
	//moves towards p1 if closer than p2
	if (dist_p1 < dist_p2)
	{
		move_towards_point(obj_p1.x, obj_p1.y - 20, enemy_speed);
		if (x < obj_p1.x) {image_xscale = -1;}
		if (x > obj_p1.x) {image_xscale = 1;}
		
		//fires bullet at p1
		if (dist_p1 < 60 || dist_p2 < 60)
		{
			isShoot = true;
			if (isShoot = true)
			{
				shoot_timer++
				if (shoot_timer > shoot_timer_max)
				{
					var bullet = instance_create_layer(enemy_p1.x - 15, enemy_p1.y + 40, "Instances", obj_enemy2_bullet);
					bullet.direction = point_direction(bullet.x,bullet.y,obj_p1.x,obj_p1.y);
					bullet.speed = 2;
				
					if (bullet.y < 0 || bullet.y > room_height
						|| bullet.x < 0 || bullet.x > room_width)
					{
						instance_destroy();
					}
					shoot_timer = 0;
				}
			}			
			//deletes bullet if off screen
		}
		isShoot = false;
	}
	//moves towards p2 if closer than p1
	else if (dist_p2 < dist_p1)
	{
		move_towards_point(obj_p2.x, obj_p2.y - 30, enemy_speed);
		if (x < obj_p2.x) {image_xscale = -1;}
		if (x > obj_p2.x) {image_xscale = 1;}
	
		//fires bullet at p3
		if (dist_p1 < 60 || dist_p2 < 60)
		{
			isShoot = true;
			if (isShoot = true)
			{
				shoot_timer++
				if (shoot_timer > shoot_timer_max)
				{
			
					var bullet = instance_create_layer(enemy_p2.x - 15, enemy_p2.y + 40, "Instances", obj_enemy2_bullet);
					bullet.direction = point_direction(bullet.x,bullet.y,obj_p2.x,obj_p2.y);
					bullet.speed = 2;
		
					//deletes bullet if off screen
					if (bullet.y < 0 || bullet.y > room_height
						|| bullet.x < 0 || bullet.x > room_width)
					{
						instance_destroy();
					}
					shoot_timer = 0;
				}
			}
		}
	}
	else speed = 0;
}
		
		
