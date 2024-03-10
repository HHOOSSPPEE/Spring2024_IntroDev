var dist_p1 = distance_to_object(obj_p1);
var dist_p2 = distance_to_object(obj_p2);

if (enemy_health < 0)
{
	dead_timer++
	sprite_index = spr_enemy_die;
	if (dead_timer > dead_timer_max)
	{
		instance_destroy();
		dead_timer = 0;
	}
}
else {sprite_index = spr_enemy;}

if (dist_p1 < 60 || dist_p2 < 60) //cant get enemy to stop chasing lmao
{
	if (dist_p1 < dist_p2)
	{
		move_towards_point(obj_p1.x, obj_p1.y, enemy_speed);
		if (x < obj_p1.x) {image_xscale = -1;}
		if (x > obj_p1.x) {image_xscale = 1;}
	}
	else if (dist_p2 < dist_p1)
	{
		move_towards_point(obj_p2.x, obj_p2.y, enemy_speed);
		if (x < obj_p2.x) {image_xscale = -1;}
		if (x > obj_p2.x) {image_xscale = 1;}
	}
}
else speed = 0;

show_debug_message(dist_p1);
