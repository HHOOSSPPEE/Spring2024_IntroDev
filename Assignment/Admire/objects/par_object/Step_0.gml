x=xValue+(x-obj_camera.xCam)*((yValue-obj_chr.yValue)*xCorrectRatio);
y= Ground + abs(yValue-obj_chr.yValue)*yCorrectRatio;
if ((obj_chr.yValue<=yValue) && ((obj_chr.yValue+12)>yValue)){// when horizontal move forward beyond object
	depth=-1;
	collision = true;
}
else if ((obj_chr.yValue+12)<=yValue){// when player move forward beyond object
	depth = -3;
	collision = true;
}
else if (obj_chr.yValue>yValue){// when horizontal move backward below object
	depth=1;
	collision = false;
}

	
image_xscale=1-((obj_chr.yValue-yValue)*scaleCorrectRatio);
image_yscale=1-((obj_chr.yValue-yValue)*scaleCorrectRatio);
