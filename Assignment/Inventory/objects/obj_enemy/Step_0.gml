direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = obj_player.state == PlayerState.move ? 2 : 0;
if (hp<=0){
	instance_destroy();
	obj_enemy_manager.enemyDefeated+=1;
}