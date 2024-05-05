enum playerState
{
	Idle,
	Run,
	Hurt,
	Dead,
}

gun_spawn_height = 14;
instance_create_layer(x, y-gun_spawn_height, "Instances", obj_gun);

image_xscale = 0.8;
image_yscale = 0.8;

state = playerState.Idle;

attacking = false;

hurt = false;
_health = 3;
move_speed = 2;

move_x = 0;
move_y = 0;
