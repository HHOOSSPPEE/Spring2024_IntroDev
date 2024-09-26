if(global.show&&mouse_check_button(mb_left)){
	global.washed=true;

        audio_play_sound(sound_board, 1, false);
      
}


var player_instance = instance_nearest(x, y, obj_player);
var distance = point_distance(x, y, player_instance.x, player_instance.y);
var displayDistance = 300; 


if (distance < displayDistance) {
    global.show = true;
} else {
    global.show = false;
}
