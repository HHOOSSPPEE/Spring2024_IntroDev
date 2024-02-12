/// @description Insert description here
// You can write your code in this editor


if(instance_number(obj_enemy_zomie)<6){
	spawn_timer++;
	if(spawn_timer>=spawn_timer_max)
	{
		spawn_timer=0;
		var interval = 16/2*3;
		for(var i = 0; i<=2;i++)
		{
			instance_create_depth(x-interval*i,y,-1,obj_enemy_zomie)
		
		}
	}
}