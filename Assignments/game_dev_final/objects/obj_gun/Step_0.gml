if global.hasgun = false
{
	visible = false;
}

if global.hasgun = true
{
	visible = true;
}

// gun follows the mouse with slight delay
var pd = point_direction(x,y,mouse_x,mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), 10) * sign(dd);

//shoots bullet with cooldown
if (mouse_check_button_pressed(1) && (bullet_counter < 4) && (timer >= 0)) && (global.hasgun = true)
{
	//a var for a single bullet
	var _bullet = instance_create_layer(x ,y ,"Bullets",obj_bullet);
	bullet_counter += 1;
	timer = 0;

	with(_bullet)
	{
		speed = 7;
		direction = obj_gun.image_angle;
		image_angle = direction;
	}
}

if (timer = 100)
{
	bullet_counter = 0;
	//timer = 0;
}
timer += 1;

global.bullet_counter = bullet_counter;

/*//shoots bullet with cooldown
if(keyboard_check(vk_space) && (cooldown < 0))
{
	//a var for a single bullet
	var _bullet = instance_create_layer(x,y,"Bullets",obj_bullet);
	cooldown = 30;
	with(_bullet)
	{
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}
}
cooldown = cooldown - 1;