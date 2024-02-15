if (!canSpawn) 
{
    spawnTimer += 1; 


    if (spawnTimer >= 15 * 60) 
	{
        canSpawn = true;
        spawnTimer = 0;
    }
}



var playerInView = false;
var _camera = camera_get_active();
var viewX = camera_get_view_x(_camera);
var viewY = camera_get_view_y(_camera);
var viewW = camera_get_view_width(_camera);
var viewH = camera_get_view_height(_camera);


if (x >= viewX && x <= viewX + viewW && y >= viewY && y <= viewY + viewH) 
{
    playerInView = true;
}


if (playerInView && canSpawn) 
{
    instance_create_layer(x + 16, y, "Instances", obj_bird_left);
    canSpawn = false;
}