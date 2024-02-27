// head bobbing
bobTick += 0.05;
swayX = 2*cos(bobTick/2);
swayY = 2*sin(bobTick/2);
// track character
if (target != noone){
	xCam = target.x + swayX;
	yCam = target.y + swayY;
}

// check collision
if ((xCam-newCamWidth/2)<0){
	xCam = newCamWidth/2
}
if ((xCam+newCamWidth/2)>room_width){
	xCam = room_width-newCamWidth/2
}
if ((yCam-newCamHeight/2)<0){
	yCam = newCamHeight/2
}
if ((yCam+newCamHeight/2)>room_height){
	yCam = room_height-newCamHeight/2
}

// camera smoothing 
if (enableSmoothing){
	if (specialSmoothing){
		x += (xCam-x)/80;
		y += (yCam-y)/80;
		camWidth += (newCamWidth-camWidth)/80;
		camHeight += (newCamHeight-camHeight)/80;
	}
	else{	
		x += (xCam-x)/10;
		y += (yCam-y)/10;
	}
}
else{
	x=xCam;
	y=yCam;
}

// special camera
if (xCam>410 && obj_chr.yValue<-160 && obj_chr.yValue>-200){
	instance_create_layer((obj_moon.x+obj_chr.x)/2,(obj_chr.y+obj_moon.y)/2,"instances",obj_target)
	target=obj_target;
	newCamWidth = 384;
	newCamHeight = 256;
	obj_chr.canMove=false;
	specialSmoothing=true;
	audio_sound_gain(obj_chr.forest,0,1000);
	alarm[0] = game_get_speed(gamespeed_fps);
}


// set viewport
camera_set_view_size(view_camera[0],camWidth,camHeight);
camera_set_view_pos(view_camera[0],x-(camWidth/2),y-(camHeight/2));