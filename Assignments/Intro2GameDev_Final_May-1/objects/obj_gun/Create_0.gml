enum gunType
{
	ak,
	m4,
	mcx,
	svd,
}

d2c_x = sprite_width/3;
d2c_y = sprite_height/3;


depth = -10;

gun = gunType.ak;

//gun scale
image_xscale = 0.75;
image_yscale = 0.75;

//svd progress bar
progress_bar = 20;
bar_height = 2;

//bullet scales
m4_yscale = 0.75;
mcx_xscale = 0.5;
svd_x_scale = 3;
b_xscale = 1;
b_yscale = 1;

bullet_x = 0;
bullet_y = 0;


bullet_speed = 15;
svd_bullet_speed = 30;

//shooting_timer (firing speed)
ak_shoot_timer = 6;
m4_shoot_timer = 10;
mcx_shoot_timer = 3;
svd_shoot_timer = 120;

shoot_cd = 0
shoot_timer = ak_shoot_timer;

//spreads
ak_shoot_spread = 6;
m4_shoot_spread = 3;
mcx_shoot_spread = 10;
svd_shoot_spread = 0;

shoot_spread = ak_shoot_spread;

//knock_back strength
ak_knockback = 4;
m4_knockback = 3;
mcx_knockback = 1;
svd_knockback = 8;
knockback = ak_knockback;

//damages
ak_damage = 3;
m4_damage = 5;
mcx_damage = 3;
svd_damage = 10;
damage = ak_damage;

ak_distance = 250;
m4_distance = 300;
mcx_distance = 150;
svd_distance = 2000;
travel_distance = ak_distance;