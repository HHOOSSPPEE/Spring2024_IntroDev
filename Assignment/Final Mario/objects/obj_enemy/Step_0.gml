
var player_instance = instance_nearest(x, y, obj_player); 


var distance_to_player = point_distance(x, y, player_instance.x, player_instance.y);

if (distance_to_player < 200) {

	isActivated = true;}
if(isActivated){
    x += move_speed;
    y += grv;
}

    if (!place_meeting(x, y, tmJumpCollide)) {
        grv = 2;
    }

    if (place_meeting(x, y, tmFloor)) {
        grv = 0;
    }
	
	if(place_meeting(x,y,tmJumpCollide)){
grv=0;

}

    if (place_meeting(x, y, obj_wall)) {
        move_speed *= -1; 
    }
 else {
   
}
