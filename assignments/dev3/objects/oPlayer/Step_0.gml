keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))
boost = keyboard_check(vk_shift)

//Player Movement
#region
//Input
playerDirection = point_direction(0,0, keyRight - keyLeft, keyDown - keyUp)
inputMagnitude = (keyRight - keyLeft != 0) || (keyDown - keyUp != 0)
var lastInputDirection = 0

//Movement
xspeed = lengthdir_x(inputMagnitude * walkSpeed, playerDirection)
yspeed = lengthdir_y(inputMagnitude * walkSpeed, playerDirection)

if(keyboard_check(vk_shift))
{
	xspeed = xspeed*2
	yspeed = yspeed*2
}

if place_meeting(x + xspeed, y, oWall) 
{
	xspeed = 0
}
if place_meeting(x, y + yspeed, oWall) 
{
	yspeed = 0
}

x += xspeed
y += yspeed

#endregion

if (inputMagnitude) {
    lastInputDirection = playerDirection;
}
centerY = y + centerYOffset
aimDir = point_direction(x, centerY, mouse_x, mouse_y)

//Sprite Control

#region
image_speed = 1
if xspeed !=0 image_xscale = sign(xspeed)
if xspeed != 0 && gothit = false {
		sprite_index = sPlayerWalk
		/*if !audio_is_playing(sdStep) {
			audio_play_sound(sdStep,1,false)
		}*/
	} else if gothit != true {
		sprite_index = sPlayerIdle
	}

#endregion


if place_meeting(x,y,oEnemyBullet) {
	gothit = true
	hit_point-=1
	xspeed = xspeed*2
	yspeed = yspeed*2
	sprite_index = sPlayerGotHit
	var bullet = instance_place(x, y, oEnemyBullet);
	if (bullet != noone) {
		    // Collision detected, now apply knockback
			knockback_speed = 5;
		    knockback_direction = point_direction(bullet.x, bullet.y, x, y);

		}
	instance_destroy(bullet)
	alarm[0] = 20	
}
if (knockback_speed > 0) {
    // Apply movement in the knockback direction
    if !place_meeting(x,y, oWall){
		x += lengthdir_x(knockback_speed, knockback_direction);
		y += lengthdir_y(knockback_speed, knockback_direction);
	}else if place_meeting(x,y,oWall) {
		x -= lengthdir_x(knockback_speed, knockback_direction);
		y -= lengthdir_y(knockback_speed, knockback_direction);
	}

    // Gradually reduce the knockback speed to simulate friction or resistance
    knockback_speed -= 1; 

    // Prevent knockback speed from becoming negative
    if (knockback_speed < 0) {
        knockback_speed = 0;
		
    }
}
if !audio_group_is_loaded(audiogroup_default) {
	audio_group_load(audiogroup_default)
}
if hit_point < 1 {
	instance_create_layer(x,y,"Instances",oPlayerCorpse)
	instance_create_layer(x,y,"Instances",oDeathScreen)
	instance_destroy()
	instance_destroy(player_gun)
	if(keyboard_check_pressed(ord("r"))){
		room_restart()
	}
	
}