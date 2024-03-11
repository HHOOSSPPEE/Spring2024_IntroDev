image_speed = 0;
yspeed = 0;
xspeed = 0;
walkSpeed = 1.5;

centerYOffset = -5
centerY = y + centerYOffset
playerDirection = 0
aimDir = 0
face = 3

gothit = false
hit_point = 10
knockback_speed = 0;
knockback_direction = 0;

player_gun = instance_create_depth(x,y,depth,oGun)

if !audio_group_is_loaded(audiogroup_default) {
	audio_group_load(audiogroup_default)
}
