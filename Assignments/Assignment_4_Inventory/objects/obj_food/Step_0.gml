randomise();


if (!instance_exists(obj_apple))
{
	instance_create_layer(random_range(40, 150), random_range(75, 270), "Instances", obj_apple);
	obj_apple.image_index = irandom(5);
}

if (!instance_exists(obj_banana))
{
	instance_create_layer(random_range(45, 350), random_range(150, 280), "Instances", obj_banana);
	obj_banana.image_index = irandom(5);
}

if (!instance_exists(obj_orange))
{
	instance_create_layer(random_range(230, 350), random_range(40, 350), "Instances", obj_orange);
	obj_orange.image_index = irandom(5);
}


