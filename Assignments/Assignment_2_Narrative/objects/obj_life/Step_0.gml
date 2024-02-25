x = camera_get_view_x(view_camera[0]) + 10;
y = 10;

//player lives icon
obj_player_icon.x = x + 100;
obj_player_icon.y = y - 2;

//candy icon
obj_candy_icon.x = x + obj_camera.camWidth - 80;
obj_candy_icon.y = 8;


if(global.health == 4)
{
	image_index = 0;
}
else if (global.health == 3)
{
	image_index = 1;
}
else if (global.health == 2)
{
	image_index = 2;
}
else if (global.health == 1)
{
	image_index = 3;
}
else if (global.health == 0)
{
	image_index = 4;
}