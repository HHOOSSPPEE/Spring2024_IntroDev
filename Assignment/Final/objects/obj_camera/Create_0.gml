camWidth = 1296;
camHeight = 864;
cameraRatio = camWidth/camHeight
newCamWidth = camWidth;
newCamHeight = camHeight;
xCam = 0;
yCam = 0;
target = obj_target;

// enable camera smoothing after player move
enableSmoothing = false;
specialSmoothing = false;

// head bobbing
bobTick = 0
swayX = 4*cos(bobTick/2);
swayY = 4*sin(bobTick/2);