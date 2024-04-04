playerSpeed = 10;
playerX = 0
playerY = 0;

enum PlayerAnimations
{
	IdleRight,
	MoveRight,
	Transition_IdleToMoveRight
}

global.playerCurrentAnimation = PlayerAnimations.IdleRight;

transition_IdleToRight = 2 * room_speed;