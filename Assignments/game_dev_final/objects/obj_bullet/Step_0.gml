//move_bounce_solid(0);

//horizontal check
if place_meeting(x + lengthdir_x(speed+1, direction), y, obj_wall)
{
	direction = direction + 90;
	image_angle = direction;
	bullet_health = bullet_health -1;
}

//vertical check
if place_meeting(x, y + lengthdir_y(speed+1, direction), obj_wall)
{
	direction = direction - 90;
	image_angle = direction;
	bullet_health = bullet_health -1;
}

if (bullet_health <= 0)
{
	instance_destroy();
}

if (direction >= 360)
{
	direction = -360
}
