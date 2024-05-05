randomize();

global.RandomizedTiles = layer_create(50);
global.RandomizedDecor = layer_create(45);

tileSize = 32;
tileX = room_width / tileSize;
tileY = room_height / tileSize;


for (var i = 0; i < tileX; i ++)
{
	for (var j = 0; j < tileY; j ++)
	{
		var gtile = instance_create_layer(i * tileSize, j * tileSize, global.RandomizedTiles, obj_groundtile);
		
		var rand = irandom(7);
		var currentTile = 0;
		switch rand
		{
			case 0:
				currentTile = 1;
				break;
			case 1:
				currentTile = 2;
				break;
			case 2:
				currentTile = 3;
				break;
			default:
				currentTile = 4;
				break;
		}
		
		gtile.image_index = currentTile;
		
		//global.tileArray[i][j] = tempObj;//for other stuffs
		
		//var tileChecker = random(8);
	}
}

//var amt = irandom_range(16, 48); 
var amt = 320;
global.grid = ds_grid_create(tileX, tileY);
ds_grid_clear(global.grid, 0);

global.mp_grid = mp_grid_create(0, 0, tileX, tileY, tileSize, tileSize);

for (var i = 0; i < amt; i++)
{
    var location_x = irandom(tileX);
    var location_y = irandom(tileY);
    var time_checker = 9;
    
    while (global.grid[# location_x, location_y] == 1 && time_checker > 0)
    {
        location_x = irandom(tileX);
        location_y = irandom(tileY);
        time_checker--;
    }

	
    if (time_checker > 0)
    {
		instance_create_layer(location_x * tileSize, location_y * tileSize, "Instances", obj_block);
		global.grid[# location_x, location_y] = 1;
		mp_grid_add_cell(global.mp_grid, location_x, location_y);
		
		/*
		if(xy == 0)
		{
			instance_create_layer(block_pos, location_y, "Instances", obj_block);
			grid[# block_pos, location_y] = 1;
		}
		if(xy == 1)
		{
			instance_create_layer(location_x, block_pos, "Instances", obj_block);
			grid[# location_x, block_pos] = 1;
		}*/
    }
}