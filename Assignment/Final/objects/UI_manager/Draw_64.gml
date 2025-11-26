// draw score
draw_set_font(fnt_bold);
draw_text(100,140,"Hunger Level");
draw_set_font(fnt_normal);
draw_text(100,80,"kirby hunted = "+string(global.preyHunted));

// draw stamina
var temp = max(obj_player2.hungryThreshold-obj_player2.hungry,0);
var xScale = (temp/obj_player2.hungryThreshold)*2
draw_sprite_ext(spr_bar,0,100,190,xScale,2,0,c_orange,1);
draw_sprite_ext(spr_frame,0,100+sprite_get_width(spr_frame),190,2,2,0,c_white,1);


// draw player bow drawing degree
with (obj_player2) {
	var screenX = (x - (obj_camera.x-obj_camera.camWidth/2))/obj_camera.camWidth*1296;
	var screenY = (y - (obj_camera.y-obj_camera.camHeight/2))/obj_camera.camHeight*864- sprite_height;
	if (shootingHold=true){
		draw_sprite(spr_frame,0,screenX,screenY);
		var xScale = (holdTime > holdTimeThreshold) ? (min(holdTime*10,1200)-holdTimeThreshold*10)/(1200-holdTimeThreshold*10): 0;
		draw_sprite_ext(spr_bar,0,screenX-sprite_get_width(spr_bar)/2,screenY,xScale,1,0,c_white,1)
	}
}

// draw arrow when player out of screen
var screenHeight = (obj_player2.y - (obj_camera.y-obj_camera.camHeight/2))/obj_camera.camHeight*864- 60;
if ((obj_player1.x-obj_camera.x)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,view_get_wport(0)-sprite_get_width(spr_pointer),screenHeight,-1,1,0,c_white,1);
}
else if ((obj_camera.x-obj_player1.x)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,sprite_get_width(spr_pointer),screenHeight,1,1,0,c_white,1);
}
if ((obj_player2.x-obj_camera.x)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,view_get_wport(0)-sprite_get_width(spr_pointer),screenHeight,-1,1,0,c_white,1);
}
else if ((obj_camera.x-obj_player2.x)>obj_camera.camWidth/2){
	draw_sprite_ext(spr_pointer,0,sprite_get_width(spr_pointer),screenHeight,1,1,0,c_white,1);
}

// draw kirby UI
with (obj_kirby) {
	var screenX = (x - (obj_camera.x-obj_camera.camWidth/2))/obj_camera.camWidth*1296;
	var screenY = (y - (obj_camera.y-obj_camera.camHeight/2))/obj_camera.camHeight*864- sprite_height;
	
	if (hp<2){
		draw_sprite(spr_hp,0,screenX,screenY-2);
	}
    // draw warn sign of preys
    if (state == KirbyState.run) {
        draw_sprite(spr_warn, 0, screenX, screenY-20);
    }
}
