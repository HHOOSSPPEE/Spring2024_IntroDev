v+=dec;
x+=v;
if (v*dir<=0){
	instance_destroy();
}
if(instance_place(x,y,obj_enemy_parent)){
	with(instance_place(x,y,obj_enemy_parent)){
		ds_list_add(global.deadEnemyPath,variable_instance_get(self,"paths"));
		ds_list_add(global.deadEnemy,object_index);
		instance_destroy();
	}
	instance_destroy();
}