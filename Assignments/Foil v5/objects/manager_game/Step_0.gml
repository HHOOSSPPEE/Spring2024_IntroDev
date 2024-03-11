//score and room reset for player1
if (global.kill1 = true)
{
	timer += 1;
}

if (timer = 100)
{
	global.priority = 0;
	global.parry = false;
	o_player1.x = o_spawn1.x;
	o_player1.y = o_spawn1.y;
	global.kill1 = false;
	timer = 0;
	instance_create_layer(o_spawn2.x,o_spawn2.y,"Instances",o_player2);
	instance_create_layer(o_spawn2.x,o_spawn2.y,"Instances",o_foil2);
}

//score and room reset for player2
if (global.kill2 = true)
{
	timer += 1;
}

if (timer = 100)
{
	global.priority = 0;
	global.parry = false;
	o_player2.x = o_spawn2.x;
	o_player2.y = o_spawn2.y;
	global.kill2 = false;
	timer = 0;
	instance_create_layer(o_spawn1.x,o_spawn1.y,"Instances",o_player1);
	instance_create_layer(o_spawn1.x,o_spawn1.y,"Instances",o_foil1);
}

	//o_player2.x = o_spawn2.x;
	//o_player2.y = o_spawn2.y;