y += move_speed;
parkour_tilemap = layer_tilemap_get_id("floors");

if(place_meeting(x,y-1,parkour_tilemap) || place_meeting(x,y+1,parkour_tilemap)){
	move_speed *= -1;
}

if(place_meeting(x,y,obj_projectile)){
	instance_destroy();
	global.total_score = global.total_score + 5;
}