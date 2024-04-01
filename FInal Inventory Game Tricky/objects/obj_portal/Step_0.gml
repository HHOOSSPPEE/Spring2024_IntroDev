var currentRoom = room_get_name(room);

if(currentRoom=="Room1"&& place_meeting(x,y,obj_player)){
	room_goto(Room2)
	
}
if(currentRoom=="Room2"&& place_meeting(x,y,obj_player)){
	room_goto(Room3)
	
}

if(currentRoom=="Room3"&& place_meeting(x,y,obj_player)){
	room_goto(Room4)
	
}

if(currentRoom=="Room4"&& place_meeting(x,y,obj_player)){
	room_goto(Room5)
	
}