// move
hSpd = 0;
vSpd = 0;
moveSpeed = 6;
inertia = 1.0;

// life
hp = 6;
invincible = false;
invincibleThreshold = 60;
invincibleTimer = 0;

// equipment
equipment = obj_equipment.inventory[0];
canShoot = true;
shootThreshold = 60;
shootTimer = 0;

// sprite
angle = point_direction(x, y, mouse_x, mouse_y);

enum PlayerState{
	move,
	inventory
}

state = PlayerState.move;