//player input here
//inputs
var keyRight = keyboard_check(vk_right);
var keyLeft = keyboard_check(vk_left);
var keyUp = keyboard_check(vk_up);
var keyDown = keyboard_check(vk_down);

//where are we going
playerX = (keyRight - keyLeft) * playerSpeed;
playerY = (keyDown - keyUp) * playerSpeed;

x += playerX;
y += playerY;

//compare inputs to states
if (keyboard_check(vk_right))
{
	if (global.playerCurrentAnimation != PlayerAnimations.MoveRight)
	global.playerCurrentAnimation = PlayerAnimations.Transition_IdleToMoveRight;
}

if (keyboard_check_released(vk_right))
{
	if (global.playerCurrentAnimation != PlayerAnimations.IdleRight)
	global.playerCurrentAnimation = PlayerAnimations.IdleRight;
}

//show_debug_message(global.playerCurrentAnimation)

//player animation here
switch(global.playerCurrentAnimation)
{
	case PlayerAnimations.IdleRight:
	
			transition_IdleToRight = 2 * room_speed;
			
			sprite_index = spr_playerIdleRight;
			
		break;
		
	case PlayerAnimations.MoveRight:
	
			sprite_index = spr_playerMoveRight;
			
		break;
		
	case PlayerAnimations.Transition_IdleToMoveRight:
	
			sprite_index = spr_playertransition_IdleToMoveRight;
			
		transition_IdleToRight -= 1;
		if (transition_IdleToRight == 0)
		{
			//switch animation
			global.playerCurrentAnimation = PlayerAnimations.MoveRight;
			//reset timer
			transition_IdleToRight = 2 * room_speed;
			break;
		}
		
		break;
		
	default:
		//
		break;
}

//player movement/actions here