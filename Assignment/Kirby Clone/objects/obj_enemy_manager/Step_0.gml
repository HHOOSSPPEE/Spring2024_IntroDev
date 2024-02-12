for (var i =0;i<ds_list_size(global.deadEnemyPath);i++){// respawn enemy when out of sight
	if(global.deadEnemyPath[|i]!=noone){
		if (abs(obj_kirby.x-path_get_point_x(global.deadEnemyPath[|i],0))>obj_camera.camWidth/1.5) &&
		(abs(obj_kirby.x-path_get_point_x(global.deadEnemyPath[|i],0))<obj_camera.camWidth){
			struct_set(enemyPath,"paths",global.deadEnemyPath[|i]);
			instance_create_layer(x,y,"instances",global.deadEnemy[|i],enemyPath);
			ds_list_set(global.deadEnemyPath,i,noone);
			ds_list_set(global.deadEnemy,i,noone);
		}
	}
}