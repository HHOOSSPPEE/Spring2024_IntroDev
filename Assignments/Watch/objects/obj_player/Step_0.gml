//define keys
var _right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var _left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var _up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var _down = keyboard_check(ord("S")) || keyboard_check(vk_down);

//direction (left or right)
var _move_rl = _right - _left;
var _move_du = _down - _up;

//is key pressed
var _is_moving = false;
if ((_right && _left) || (!_right && !_left) || (_up && _down) || (!_up && !_down))
{
	_is_moving = false;
}
else 
{
	_is_moving = true;
}


//right
if (_move_rl == 1 && (x + sprite_width < room_width))
{
	vertical_velocity = 0;
	sprite_index = spr_player_rt;
	horizontal_velocity = (horizontal_velocity + move_acceleration) * move_deceleration;
	//move cam
	if (x > obj_camera.x + obj_camera.camera_width/2)
	{
	obj_camera.x += horizontal_velocity;
	}
}
//left
else if (_move_rl == -1 && (x > 0))
{
	vertical_velocity = 0;
	sprite_index = spr_player_lt;
	horizontal_velocity = (horizontal_velocity - move_acceleration) * move_deceleration;
	//move cam
	if (x < obj_camera.x + obj_camera.camera_width/2)
	{
	obj_camera.x += horizontal_velocity;
	}
}
//up
else if (_move_du == -1 && (y > 0))
{
	horizontal_velocity = 0;
	sprite_index = spr_player_up;
	vertical_velocity = (vertical_velocity - move_acceleration) * move_deceleration;
	//move cam
	if (y < obj_camera.y + obj_camera.camera_height/2)
	{
	obj_camera.y += vertical_velocity;
	}
}
//down
else if (_move_du == 1 && (y + sprite_height < room_height))
{
	horizontal_velocity = 0;
	sprite_index = spr_player_dw;
	vertical_velocity = (vertical_velocity + move_acceleration) * move_deceleration;
	//move cam
	if (y > obj_camera.y + obj_camera.camera_height/2)
	{
	obj_camera.y += vertical_velocity;
	}
}
//idle
else
{
	sprite_index = spr_player;
	horizontal_velocity = 0;
	vertical_velocity = 0;
	
}

