parkour_tilemap = layer_tilemap_get_id("floors");

if place_meeting(x, y + 1, parkour_tilemap){
	instance_destroy();
}