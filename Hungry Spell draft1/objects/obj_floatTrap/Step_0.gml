//if(place_meeting(x,y,obj_player1)){
//	room_goto(Room1);
//}
 if(place_meeting(x,y,obj_player1)){
	if(obj_player1.eating&&obj_player1.x!=x){
	instance_destroy();
	 if(global.value + 35 <= global.max_value)
            global.value += 35;
        else
            global.value = global.max_value;
	}
	else room_goto(Room1);
	
}

y-=vertrical_speed
if(y<y_start-300) vertrical_speed*=-1;
else if(y>y_start+200) vertrical_speed*=-1;

if(place_meeting(x,y,obj_wall)) vertrical_speed*=-1;
else if(place_meeting(x,y,obj_ground)) vertrical_speed*=-1;






