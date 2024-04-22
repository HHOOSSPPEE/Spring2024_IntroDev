
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyJump = keyboard_check_pressed(vk_space);


playerX = (keyRight - keyLeft) * player_spd
playerY = playerY + grv;

if(is_ground -- > 0) && (keyJump) && isJumping = false
{
playerY = player_jp_spd;
is_ground = 0

}

if(place_meeting((x + playerX),y,obj_collision))
{
	while(abs(playerX)> 0.1)
	{
		
		playerX *= 0.5;
		if(!place_meeting((x + playerX),y,obj_collision))
		{
			x += playerX;
		}
		
	}
	playerX = 0;
}

if(place_meeting((x + playerX),y,obj_pipe))
{
	while(abs(playerX)> 0.1)
	{
		
		playerX *= 0.5;
		if(!place_meeting((x + playerX),y,obj_pipe))
		{
			x += playerX;
		}
		
	}
	playerX = 0;
}

//x += playerX;
playerX *= 2;
var toMove = playerX;
var moveSign;
while (abs(toMove) >= 1) {
	moveSign = sign(toMove);
	toMove -= moveSign;
	var cam = view_camera [0 ];
	var cam_x = camera_get_view_x(cam);
	if (x - 10 < cam_x && moveSign < 0)
		break;
	x += moveSign;
	var middle = cam_x + camera_get_view_width(cam) / 2;
	if (x > middle) {
		camera_set_view_pos(cam,cam_x + x - middle ,camera_get_view_y(cam));
	}
}


if(place_meeting(x,y + playerY, obj_collision))
{
	if(playerY >0)
	{
		is_ground = 6;
		
	}
	
	while(abs(playerY)> 0.1)
	{
		playerY *= 0.5
		if(!place_meeting(x,y+playerY,obj_collision))
		{
			y += playerY;
		}
		
	
	}
	playerY = 0;
	
}
if(place_meeting(x,y + playerY, obj_pipe))
{
	if(playerY >0)
	{
		is_ground = 6;
		
	}
	
	while(abs(playerY)> 0.1)
	{
		playerY *= 0.5
		if(!place_meeting(x,y+playerY,obj_pipe))
		{
			y += playerY;
		}
		
	
	}
	playerY = 0;
	
}
y += playerY;

if(global.health<= 0)
{
	room_goto(room_death);
	
}

if(place_meeting(x,y,obj_checkpoint))
{
	global.xposMario = 1328;
}

//按下空格 : isJumping = true; alarm[0] = 某个zhen的数量;
//if (isJumping) ySpeed -= 某个加速度
//alarm0 isJumping = false;

//松开空格: isJumping = false; alarm[0] = 0;
if(keyboard_check_pressed(vk_space)){
	isJumping = true;
	alarm[0] =10;
	if(isJumping){
		playerY -= .1;
}
}
if(keyboard_check_released(vk_space)){
	isJumping = false;
	alarm[0] = 0;
}

if(place_meeting(x,y-5,obj_enemy1))
{
	playerY -= .1;
}


if(place_meeting((x + playerX),y,obj_enemy1))
{
	while(abs(playerX)> 0.1)
	{
		
		playerX *= 0.5;
		if(!place_meeting((x + playerX),y,obj_enemy1))
		{
			x += playerX;
		}
		
	}
	playerX = 0;
}

if(place_meeting(x,y + playerY, obj_enemy1))
{
	if(playerY >0)
	{
		is_ground = 6;
		
	}
	
	while(abs(playerY)> 0.1)
	{
		playerY *= 0.5
		if(!place_meeting(x,y+playerY,obj_enemy1))
		{
			y += playerY;
		}
		
	
	}
	playerY = 0;
	
}

if(keyboard_check_pressed(vk_left))
{
	image_xscale = 1;	
}

if(keyboard_check_pressed(vk_right))
{
	image_xscale = -1;
}

if(place_meeting(x,y,obj_tile))
{
	invisible = true;
	image_speed = 30
	if(place_meeting(x,y,obj_enemy1))
	{
		invisible  = false
	}
	
}
