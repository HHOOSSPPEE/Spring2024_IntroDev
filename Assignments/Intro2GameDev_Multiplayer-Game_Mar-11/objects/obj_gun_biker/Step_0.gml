/// @description Insert description here
// You can write your code in this editor


y = obj_biker_p1.y-obj_biker_p1.sprite_height/2 + 5;

if(p_type == 1)
{
	if(keyboard_check_pressed(vk_space))
	{
		var bullet = instance_create_layer(x + image_xscale*sprite_width, y, "Instances", obj_bullet_biker);
		
		if(image_xscale == 1)
		{
			bullet.image_angle = 0;
		}
		else
		{
			bullet.image_angle = 180;
			bullet.x += 2*sprite_width;
		}
	}
}
else if (p_type == 2)
{
	if(keyboard_check_pressed(vk_up))
	{
		instance_create_layer(x + image_xscale*sprite_width, y, "Instances", obj_bullet_biker);
		bullet.image_xscale = image_xscale;
	}
}
