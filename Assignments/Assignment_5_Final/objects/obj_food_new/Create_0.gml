randomize();

food_type = irandom(4);
if (food_type == 0)
{
	item = global.item_list.burger;
}
else if (food_type == 1)
{
	item = global.item_list.pizza;
}
else if (food_type == 2)
{
	item = global.item_list.hotdog;
}
else if (food_type == 3)
{
	item = global.item_list.fries;
}
else if (food_type == 4)
{
	item = global.item_list.soda;
}



ts_ground = layer_tilemap_get_id("Ground")

timer = 0;
timer_max = 60 * 10;





