var keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
var keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
var keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
var keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
var keyShoot = mouse_check_button(mb_left);

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
		
		// shoot 
		shootThreshold = equipment.cd;
		if (keyShoot && canShoot){
			var offsetX = lengthdir_x(sprite_get_width(equipment.sprite)/2, angle);  
		    var ammo = instance_create_layer(x + offsetX, y, "Instances", obj_ammo);
		    ammo.direction = point_direction(x, y, mouse_x, mouse_y);
			canShoot = false;
			shootTimer = 0;
		}
		if (shootTimer++>shootThreshold) canShoot = true;
		
		// change state
		if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P"))){
			state = PlayerState.inventory;
		}

		// being hit
		if (place_meeting(x,y,obj_enemy) && !invincible){
			hp -= 1;
			invincible = true;
			invincibleTimer = 0;
		}
		if (invincibleTimer++ > invincibleThreshold) invincible = false;
		
		if (hp <= 0){
			room_restart();
		}
		
		// implement movement
		y += vSpd;
		x += hSpd;
		break
	
	case PlayerState.inventory:
		if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(ord("P"))){
			state = PlayerState.move;
		}
		equipment = obj_equipment.inventory[0];
		break
}
