//timer 
timer2 = timer2 +1;

if timer2 = 100
{
	gameTime = true;
}
else
{
	gameTime = false;
}

if timer2 = 200
{
	timer2 = 0;
}

//spawns things to collect
if gameTime = true
{
	spawn = 1;
	
	var randomNumber = irandom_range(-15, 15);
	
	if spawn = 1
	{
	instance_create_layer(randomNumber+x,randomNumber+y,"Instances",obj_items1)
	}
}

//makes spawner move

//timer for trail
timer = timer + 1;

if timer < 320
{
	x = x + 5;
}

if timer > 320
{
	x = x - 5;
}

if timer = 640
{
	timer = 0;
}

/*
//makes things fall
if (keyboard_check(vk_alt))
{
	instance_create_layer(x,y,"Instances",obj_falling1)
}