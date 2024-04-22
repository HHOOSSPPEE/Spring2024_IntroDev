randomize();

food_type = irandom(5);
if (food_type == 0)
{
	item = global.item_list.apple;
}
else if (food_type == 1)
{
	item = global.item_list.banana;
}
else if (food_type == 2)
{
	item = global.item_list.orange;
}
else if (food_type == 3)
{
	item = global.item_list.cake;
}
else if (food_type == 4)
{
	item = global.item_list.macarons;
}
else if (food_type == 5)
{
	item = global.item_list.tiramisu;
}



ts_ground = layer_tilemap_get_id("Ground")

timer = 0;
timer_max = 60 * 10;





