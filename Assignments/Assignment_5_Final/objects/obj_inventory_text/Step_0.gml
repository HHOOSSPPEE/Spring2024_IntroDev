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
else if (obj_player.farmer_sam)
{
	farmer_sprite = spr_farmer_sam;
	farmer_name = "Uncle Sam";
	farmer_sell = "I eat anything.";
}
else if (obj_player.key_seller)
{
	farmer_sprite = spr_key_seller;
	farmer_name = "???";
	farmer_sell = "I sell keys";
}
else if (obj_player.boat_man)
{
	farmer_sprite = spr_boatman;
	farmer_name = "Fisherman Henrich III";
	farmer_sell = "Want a ride?";
}

if (!instance_exists(obj_inventory_sell))
{
	farmer_sprite = spr_farmer_worldwide;
	farmer_name = " ";
	farmer_sell = " ";
}