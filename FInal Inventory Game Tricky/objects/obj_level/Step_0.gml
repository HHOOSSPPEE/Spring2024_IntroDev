var currentRoom = room_get_name(room);

if(currentRoom=="Room1"&&obj_button1.obj1Found){
	//obj_portal.visible=true;
	obj_button1.obj1Found=false;
    instance_create_depth(1200,100,0,obj_portal)

	//show_debug_message("111")
	
}


if(currentRoom=="Room2"&&obj_button1.obj1Found&&obj_button3.obj3Found){
	
	obj_button1.obj1Found=false;
	obj_button3.obj3Found=false;
	instance_create_depth(1200,100,0,obj_portal)
	//show_debug_message("222")
	
}

if(currentRoom=="Room3"&&obj_button2.obj2Found&&obj_button4.obj4Found){
	
	
	obj_button2.obj2Found=false;
	
	obj_button4.obj4Found=false;
	instance_create_depth(1200,100,0,obj_portal)
	//show_debug_message("222")
	
}

if(currentRoom=="Room4"&&obj_button2.obj2Found&&obj_button4.obj4Found&&obj_button5.obj5Found){
	
	obj_button2.obj2Found=false;
	obj_button4.obj4Found=false;
	obj_button5.obj5Found=false;
	instance_create_depth(1200,100,0,obj_portal)
	show_debug_message("Win")
	
}
//show_debug_message(obj_button3.obj3Found)
