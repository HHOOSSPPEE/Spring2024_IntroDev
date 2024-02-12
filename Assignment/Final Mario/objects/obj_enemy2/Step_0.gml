if (place_meeting(x, y - 17, obj_player) && !place_meeting(x, y, obj_player)) {
    if (!shell) {
       
        image_index = 1;
        shell = true;
        step = 1;
        timer = delay; 
    } else if (shell && step == 1 && timer <= 0) {
      
        step = 2;
    }
}


if (shell && timer > 0) {
    timer -= 1;
}


if (step == 2) {
    move_speed=3; 
    step = 0; 
}


if(shell&&place_meeting(x-8,y,obj_player)&&timer<=0&&!moving){
	move_speed=3;
	moving=true;
}

if(shell&&place_meeting(x+8,y,obj_player)&&timer<=0&&!moving){
   
   move_speed=-3;
   moving=true;
}


x+=move_speed
y+=grv;





if(!place_meeting(x,y,tmJumpCollide)){
grv=3;

}

if(place_meeting(x,y,tmFloor)){
grv=0;

}


if(place_meeting(x,y,tmJumpCollide)){
grv=0;

}

if(!place_meeting(x,y,tmFloor)){
grv=3;

}
if(place_meeting(x,y,obj_wall)){

move_speed*=-1;
}

var player_instance = instance_nearest(x, y, obj_player); 

var distance_to_player = point_distance(x, y, player_instance.x, player_instance.y);


if (distance_to_player < 200) {
    
	isActivated = true;}
if (!shell&&isActivated) {
    x -= walk_speed; 
}


if (place_meeting(x + walk_speed, y, obj_wall)) {
    walk_speed *= -1; 
}

if(!move_speed==0&shell&place_meeting(x,y,obj_enemy)){instance_destroy(obj_enemy)}