/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x, y, mouse_x, mouse_y);

image_angle = dir;

if(dir > 90 && dir < 270)
{
	obj_player.image_dir = -1;
	image_yscale = -1;
}
else
{
	obj_player.image_dir = 1;
	image_yscale = 1;
}
x = obj_player.x;
y = obj_player.y-18;

//shooting
bullet_x = x + lengthdir_x(d2c_x, image_angle);
bullet_y = y + lengthdir_y(d2c_y, image_angle);
shoot_cd--;
gun_x = x - lengthdir_x(d2c_x/4, image_angle);
gun_y = y - lengthdir_y(d2c_y/4, image_angle);
if(shoot_cd	<= 0)
{
	if(mouse_check_button(mb_left))
	{
		x = gun_x;
		y = gun_y;
		audio_play_sound(gun_shot, 1, false, 2);
		with(instance_create_layer(bullet_x, bullet_y, "Instances", obj_guneffect))
		{
			image_angle = obj_gun.image_angle;
		}
		with(instance_create_layer(bullet_x, bullet_y, "Instances", obj_bullet))
		{
			image_angle = obj_gun.image_angle;
			motion_add(image_angle, 15);
		}
	}
	shoot_cd = shoot_timer;
}
