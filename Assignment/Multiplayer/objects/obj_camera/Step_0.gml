// head bobbing
bobTick += 0.05;
swayX = 4*cos(bobTick/2);
swayY = 4*sin(bobTick/2);

// track character
if (target != noone){
	xCam = target.x + swayX;
	yCam = target.y + swayY;
	var playerDis = abs(obj_player1.x-obj_player2.x)
	if (playerDis>576 && playerDis<=936){
		obj_target.maxCamWidth=false;
		newCamWidth = 864+(playerDis-576)*1.2;
	}
	else if (playerDis<=576){
		obj_target.maxCamWidth=false;
		newCamWidth = 864;
	}
	else{
		obj_target.maxCamWidth=true;
		newCamWidth=1296;
	}
	newCamHeight = newCamWidth / cameraRatio;
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
	x += (xCam-x)/40;
	y += (yCam-y)/40;
	camWidth += (newCamWidth-camWidth)/40;
	camHeight += (newCamHeight-camHeight)/40;
}
else{
	x=xCam;
	y=yCam;
}

// set viewport
camera_set_view_size(view_camera[0],camWidth,camHeight);
camera_set_view_pos(view_camera[0],x-(camWidth/2),y-(camHeight/2));