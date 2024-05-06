//player
player_speed = 1;
can_move = true;

//ground tilemap
ts_Ground = layer_tilemap_get_id("Ground");

//inventory
inventory_open = false;
inventory = ds_list_create();
isSell = false;
isBuy = false;
isTicket = false;

//farmers
farmer_jo = false;
farmer_world = false;
farmer_sam = false;
key_seller = false;
boat_man = false;

farmer_name = " ";
