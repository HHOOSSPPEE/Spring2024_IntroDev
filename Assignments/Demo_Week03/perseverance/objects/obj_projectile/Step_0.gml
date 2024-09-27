parkour_tilemap = layer_tilemap_get_id("tiles_collidable");

if place_meeting(x, y + 1, parkour_tilemap){
	instance_destroy();
}