                                      
//player input here
if(keyboard_check(vk_right))
{
	if(global.playerCurrentAnimation != PlayerAnimations.MoveRight)
		global.playerCurrentAnimation = PlayerAnimations.Transition_IdleToMoveRight;
}
if(keyboard_check_released(vk_right))
{
	if(global.playerCurrentAnimation != PlayerAnimations.IdleRight)
		global.playerCurrentAnimation = PlayerAnimations.IdleRight;	
}


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
		
		sprite_index = spr_player_transition_IdletoMoveRight;

		transition_IdleToRight -= 1;	
		if(transition_IdleToRight == 0)
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