if (abs(obj_kirby.x-x)>obj_camera.camWidth*2){// destroy enemy when out of sight
	for (var i =0;i<ds_list_size(global.deadEnemyPath);i++){
		if (global.deadEnemyPath[|i]=noone){
			ds_list_replace(global.deadEnemyPath,i,variable_instance_get(self,"paths"));
			ds_list_replace(global.deadEnemy,i,object_index);
			listHasEmpty=true
			break;
		}
	}
	if (!listHasEmpty){
		ds_list_add(global.deadEnemyPath,variable_instance_get(self,"paths"));
		ds_list_add(global.deadEnemy,object_index);
	}
	listHasEmpty=false;
	instance_destroy();
}