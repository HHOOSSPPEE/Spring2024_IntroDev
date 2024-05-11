
if(keyboard_check_released(vk_enter)){
	character_created = true;
}

if(room == room_mc && character_created){

	var subArray = [
	obj_lefthead.currentindex, 
	obj_eye_b.currentindex, 
	obj_body_b.currentindex,
	obj_pant_b.currentindex];
    array_push(global.character_Master_array, subArray);
	show_debug_message(global.character_Master_array[0])
	room_goto_next()
		


}



if(room == room_mc2){
	obj_head.sprite_index = global.head[global.character_Master_array[0][0]];
	obj_eye.sprite_index = global.eye[global.character_Master_array[0][1]];
	obj_body.sprite_index = global.body[global.character_Master_array[0][2]];
	obj_pants.sprite_index  = global.pant[global.character_Master_array[0][3]];
	show_debug_message(global.character_Master_array[0])
	show_debug_message(character_created)
	
}
if(room == room_mc2 && character_created){
	array_push(global.character_Master_array[0],obj_name_input.text)
	show_debug_message(global.character_Master_array[0])
	room_goto_next()
}
/*
if (room == room_earth && inearth == false){ // Use double equals for comparison
    obj_head.sprite_index = global.head[global.character_Master_array[0][0]];
    obj_eye.sprite_index = global.eye[global.character_Master_array[0][1]];
    obj_body.sprite_index = global.body[global.character_Master_array[0][2]];
    obj_pants.sprite_index  = global.pant[global.character_Master_array[0][3]];
    inearth = true;
    obj_character.visible = false;
    obj_head.visible = false;
    obj_eye.visible = false;
    obj_body.visible = false;
    obj_pants.visible = false;
    show_debug_message(global.character_Master_array[0]);
}

if (inearth == true && obj_character_moving.pressed){
    show_debug_message("Processed");
    obj_character.visible = true;
    obj_head.visible = true;
    obj_eye.visible = true;
    obj_body.visible = true;
    obj_pants.visible = true;
}*/
if(room == room_mc3){
	obj_head.sprite_index = global.head[global.character_Master_array[0][0]];
	obj_eye.sprite_index = global.eye[global.character_Master_array[0][1]];
	obj_body.sprite_index = global.body[global.character_Master_array[0][2]];
	obj_pants.sprite_index  = global.pant[global.character_Master_array[0][3]];
	show_debug_message(global.character_Master_array[0])
	show_debug_message(character_created)
}

if(room == room_mc3 && character_created){
	room_goto_next()
}