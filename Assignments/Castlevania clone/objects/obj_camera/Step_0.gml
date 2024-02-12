/// @description Insert description here
// You can write your code in this editor


if(target != noone)
{
	cam_x = target.x;
	
	if (!checkPlayerY)
	{
		cam_y = target.y;
		checkPlayerY  = true;
	}
}

//camera smoothing
x += (cam_x - x) - (camera_width*0.5); 
//y += (cam_y - y) - (camera_height*0.5);
y = cam_y - camera_height*0.5;


//x += (cam_x - x)/20; //20 is an arbitary smoothing amount
//y += (cam_y - y)/20;

//camera now tracks camera object
camera_set_view_pos(view_camera[0], x, y);



