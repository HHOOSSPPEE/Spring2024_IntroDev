if (obj_player.state != playerState.Dead || obj_player.state != playerState.Hurt)
{
	if(keyboard_check_pressed(ord("1")))
	{
		gun = gunType.ak;
		sprite_index = spr_ak74;
		shoot_timer = ak_shoot_timer;
		shoot_spread = ak_shoot_spread;
		damage = ak_damage;
		b_xscale = 1;
		b_yscale = 1;
		bullet_speed = 15;
		knockback = ak_knockback;
		travel_distance = ak_distance;
	}
	else if (keyboard_check_pressed(ord("2")))
	{
		gun = gunType.m4;
		sprite_index = spr_m4;
		shoot_timer = m4_shoot_timer;
		shoot_spread = m4_shoot_spread;
		damage = m4_damage;
		b_xscale = 1;
		b_yscale = m4_yscale;
		bullet_speed = 15;
		knockback = m4_knockback;
		travel_distance = m4_distance;
	}
	else if (keyboard_check_pressed(ord("3")))
	{
		gun = gunType.mcx;
		sprite_index = spr_mcx;
		shoot_timer = mcx_shoot_timer;
		shoot_spread = mcx_shoot_spread;
		damage = mcx_damage;
		b_xscale = mcx_xscale;
		b_yscale = 1;
		bullet_speed = 15;
		knockback = mcx_knockback;
		travel_distance = mcx_distance;
	}
	else if (keyboard_check_pressed(ord("4")))
	{
		gun = gunType.svd;
		sprite_index = spr_svd;
		shoot_timer = svd_shoot_timer;
		shoot_spread = svd_shoot_spread;
		damage = svd_damage;
		b_xscale = svd_x_scale;
		b_yscale = 1;
		bullet_speed = svd_bullet_speed;
		knockback = svd_knockback;
		travel_distance = svd_distance;
	}

	bullet_x = x + lengthdir_x(d2c_x, image_angle);
	bullet_y = y + lengthdir_y(d2c_y, image_angle);
	
	if(shoot_cd > 0)
	{
		shoot_cd--;
	}

	x = obj_player.x;
	y = obj_player.y - obj_player.gun_spawn_height;

	image_angle = point_direction(x, y, mouse_x, mouse_y);

	if(mouse_x < x)
	{
		image_yscale = -0.75;
	}
	else
	{
		image_yscale = 0.75;
	}

	if(shoot_cd	<= 0)
	{
		if(mouse_check_button(mb_left))
		{	
			var kb_x = lengthdir_x(knockback, -image_angle); 
			var kb_y = lengthdir_y(knockback, -image_angle); 
			x += kb_x;
			y += kb_y;
	
			var bullet = instance_create_layer(bullet_x, bullet_y, "Instances", obj_bullet)
			bullet.image_angle = obj_gun.image_angle + irandom_range(-shoot_spread, shoot_spread);
			with bullet
			{
				motion_add(image_angle, obj_gun.bullet_speed);
				image_xscale = obj_gun.b_xscale;
				image_yscale = obj_gun.b_yscale;
				damage = obj_gun.damage;
				travel_distance = obj_gun.travel_distance;
				if(obj_gun.gun == gunType.svd)
				{
					penetrate = true;
				}
			}
			
			shoot_cd = shoot_timer;
		}
	}
}

if(obj_player.state == playerState.Dead)
{
	instance_destroy();
}
