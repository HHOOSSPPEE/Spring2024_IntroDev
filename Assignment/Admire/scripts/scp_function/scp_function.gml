#macro Ground 336

function checkCollision(obj) {
	// get transformation index
	var objX = obj.xValue+(obj.x-obj_camera.xCam)*((obj.yValue-obj_chr.yValue-obj_chr.ySpeed)*obj.xCorrectRatio);
	var objY = Ground + abs(obj.yValue-obj_chr.yValue-obj_chr.ySpeed)*obj.yCorrectRatio;
	var imageScale = 1-((obj_chr.yValue+obj_chr.ySpeed-obj.yValue)*obj.scaleCorrectRatio);
    // calculate collision mask
    var obj_left = objX- (obj.sprite_width * imageScale / 2);
    var obj_right = objX + (obj.sprite_width * imageScale / 2);
    var obj_top = objY - obj.collisionMaskHeight;
    var obj_bottom = objY 

    var chr_left = obj_chr.x - (obj_chr.sprite_width / 2);
    var chr_right = obj_chr.x + (obj_chr.sprite_width / 2);
    var chr_top = obj_chr.y - (obj_chr.sprite_height / 2);
    var chr_bottom = obj_chr.y + (obj_chr.sprite_height / 2);

    // check collision
    if (obj_right >= chr_left && obj_left <= chr_right && 
	obj_bottom >= chr_top && obj_top <= chr_bottom) {
    return true;
    }
    return false;
}