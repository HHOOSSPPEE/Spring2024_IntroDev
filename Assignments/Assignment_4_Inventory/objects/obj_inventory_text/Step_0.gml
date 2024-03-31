if (obj_player.farmer_jo)
{
	farmer_sprite = spr_farmer_jo;
	farmer_name = "Farmer Jo";
	farmer_sell = "I buy fruits!";
}
else if (obj_player.farmer_world)
{
	farmer_sprite = spr_farmer_worldwide;
	farmer_name = "Farmer Worldwide";
	farmer_sell = "I buy desserts!";
}

if (!instance_exists(obj_inventory_sell))
{
	farmer_sprite = spr_farmer_worldwide;
	farmer_name = " ";
	farmer_sell = " ";
}