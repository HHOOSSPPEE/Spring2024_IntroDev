x+=move_speed
y+=grv;

if(!place_meeting(x,y,tmJumpCollide)){
grv=2;

}

if(place_meeting(x,y,tmFloor)){
grv=0;

}


if(place_meeting(x,y,obj_wall)){

move_speed*=-1;
}
