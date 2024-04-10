var enemyHitted = instance_place(x,y,obj_enemy)
if (enemyHitted){
	enemyHitted.hp-= dmg;
	instance_destroy();
}
if (place_meeting(x,y,obj_collision_parent)){
	instance_destroy();
}