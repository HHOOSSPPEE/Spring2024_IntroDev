/// @description Insert description here
// You can write your code in this editor
enum PlayerAnimations
{
	IdleRight,
	MoveRight,
	Transition_IdleToMoveRight
}

global.playerCurrentAnimation = PlayerAnimations.IdleRight;


//animation timers
transition_IdleToRight = 2 * room_speed;