if (obj_player.state == PlayerState.move){
	if (enemyDefeated<=5){
		respawnThreshold = respawnThreshold1;
	}
	else if (enemyDefeated>10 && enemyDefeated<20){
		respawnThreshold = respawnThreshold2;
	}
	else {
		respawnThreshold = respawnThreshold3;
	}
	
	if (respawn){
		instance_create_layer(x,y,"instances",obj_enemy);
			respawn = false;
			respawnTimer=0;
	}
	else{
		if (respawnTimer++>respawnThreshold){
			respawn = true;
		}
	}
}