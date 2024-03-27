var keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
var keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
var keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
var keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);

switch(state){
	case PlayerState.move:
		//move
		if (keyRight){
			sprite_index = spr_player;
			hSpd = moveSpeed;
		}

		if (keyLeft){
			sprite_index = spr_player;

			hSpd = -moveSpeed;
		}

		if (keyUp) {
			sprite_index = spr_player;
			vSpd = -moveSpeed;
		}

		if (keyDown){
			sprite_index = spr_player;
			vSpd = moveSpeed;
		}

		// Check for horizonal collision
		if (place_meeting(x + hSpd, y, obj_collision_parent)) 
		{
		    while (!place_meeting(x + sign(hSpd), y, obj_collision_parent)) {
		        x += sign(hSpd);
		    }
		    hSpd = 0; // Stop
		}

		// Check for vertical collision
		if (place_meeting(x, y + vSpd, obj_collision_parent)) 
		{
		    while (!place_meeting(x, y + sign(vSpd), obj_collision_parent)) 
			{
		        y += sign(vSpd);
		    }
		    vSpd = 0; // Stop
		}

		// slows down if no input
		if (!keyLeft || !keyRight)
		{
			if (abs(hSpd)>inertia)
			{
				hSpd -= sign(hSpd)*inertia;
			}
			else
			{
				hSpd = 0;
			}
		}
		if (! keyUp || !keyDown)
		{
			if (abs(vSpd)>inertia)
			{
				vSpd -= sign(vSpd)*inertia;
			}
			else
			{
				vSpd = 0;
			}
		}
		if (keyboard_check(ord("P"))){
			state = PlayerState.inventory;
		}

		// implement movement
		y += vSpd;
		x += hSpd;
		break
	
	case PlayerState.inventory:
		break
}
