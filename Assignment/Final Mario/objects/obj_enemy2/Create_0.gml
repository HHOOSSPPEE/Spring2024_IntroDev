image_speed=0;
shell=false;
step=0;
timer=0;
delay=60;
move_speed=0;
grv=0.2;

walk_speed=1;

tmFloor = layer_tilemap_get_id("Tiles_6"); //be sure to uncheck "disable source sprite export" so that collisions work
tmObstacles=layer_tilemap_get_id("Tiles_3");
tmJumpCollide=layer_tilemap_get_id("Tiles_7");



moving=false;
isActivated=false;
