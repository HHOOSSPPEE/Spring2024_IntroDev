// track character
if (target != noone){
	xCam = target.x;
	yCam = target.y;
}
// check collision
if ((xCam-camWidth/2)<0){
	xCam = camWidth/2
}
if ((xCam+camWidth/2)>room_width){
	xCam = room_width-camWidth/2
}
if ((yCam-camHeight/2)<0){
	yCam = camHeight/2
}
if ((yCam+camHeight/2)>room_height){
	yCam = room_height-camHeight/2
}
	
// camera smoothing 
if (enableSmoothing){
	x += (xCam-x)/10;
	y += (yCam-y)/10;
}
else{
	x=xCam;
	y=yCam;
}

// set viewport
camera_set_view_size(view_camera[0],camWidth,camHeight);
camera_set_view_pos(view_camera[0],x-(camWidth/2),y-(camHeight/2));