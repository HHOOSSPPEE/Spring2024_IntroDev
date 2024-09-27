if(place_meeting(x,y,obj_projectile) && !invincible){
	flower_hp -= 1;
	invincible = true;
	if(flower_hp = 0){
		instance_create_layer(x,y,"Instances",obj_collectible3);
		instance_destroy();
		global.total_score = global.total_score + 5;
	}
}

if(invincible){
	invincible_timer++;
	if(invincible_timer > invincible_duration){
		invincible = false;
		invincible_timer = 0;
	}
}