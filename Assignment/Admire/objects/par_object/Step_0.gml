x=xValue+(x-obj_camera.xCam)*((yValue-obj_chr.yValue)*xCorrectRatio);
y= Ground + abs(yValue-obj_chr.yValue)*yCorrectRatio;
if (obj_chr.yValue<=yValue){//forward
	depth=-1;
	collision = true;
}
else if ((obj_chr.yValue>yValue)){//backward
	depth=1;
	collision = false;
}
image_xscale=1-((obj_chr.yValue-yValue)*scaleCorrectRatio);
image_yscale=1-((obj_chr.yValue-yValue)*scaleCorrectRatio);
