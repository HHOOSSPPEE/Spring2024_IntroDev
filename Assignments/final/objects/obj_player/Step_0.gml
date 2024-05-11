

var grabKey = keyboard_check_pressed(ord("G"));
var objId;


if(grabKey){
    objId = instance_place(x, y, obj_red);
    if(objId != noone){
        sprite_index = spr_grab;
        InventoryAdd(id, "red");
        instance_destroy(objId);
		audio_play_sound(sound_grab,1,false);

    }
}


if(grabKey){
    objId = instance_place(x, y, obj_blue);
    if(objId != noone){
        sprite_index = spr_grab;
        InventoryAdd(id, "blue");
        instance_destroy(objId);
		audio_play_sound(sound_grab,1,false);

    }
}


if(grabKey){
    objId = instance_place(x, y, obj_green);
    if(objId != noone){
        sprite_index = spr_grab;
        InventoryAdd(id, "green");
        instance_destroy(objId);
		audio_play_sound(sound_grab,1,false);

    }
}


if(grabKey){
    objId = instance_place(x, y, obj_yellow);
    if(objId != noone){
        sprite_index = spr_grab;
        InventoryAdd(id, "yellow");
        instance_destroy(objId);
		audio_play_sound(sound_grab,1,false);

    }
}


if(grabKey){
    objId = instance_place(x, y, obj_pink);
    if(objId != noone){
        sprite_index = spr_grab;
        InventoryAdd(id, "pink");
        instance_destroy(objId);
		audio_play_sound(sound_grab,1,false);

    }
}






if(keyboard_check(ord("W"))){
    sprite_index = spr_walk
    if(y - 5 >= 45) { 
        y -= 15;
    }
}
if(keyboard_check(ord("A"))){
    sprite_index = spr_walk
    if(x - 5 >= 130) {
        x -= 15;
    }
}
if(keyboard_check(ord("S"))){
    sprite_index = spr_walk
    if(y + 5 <= 540) {
        y += 15;
    }
}
if(keyboard_check(ord("D"))){
    sprite_index = spr_walk
    if(x + 5 <= 1100) {
        x += 15;
    }
}





redamount = InventorySearch(obj_player, "red");
yellowamount = InventorySearch(obj_player,"yellow");
greenamount = InventorySearch(obj_player,"green");
blueamount = InventorySearch(obj_player,"blue");
pinkamount = InventorySearch(obj_player,"pink");



if(keyboard_check_pressed(ord("Z"))){
	show_debug_message(redamount);
	show_debug_message(yellowamount);
	show_debug_message(greenamount);
	show_debug_message(blueamount);
	show_debug_message(pinkamount);
}


if(redamount == global.Potion_1 && 
yellowamount == global.Potion_2 &&
greenamount == global.Potion_3 && 
blueamount == global.Potion_4 &&
pinkamount == global.Potion_5)
{
    room_goto(room_win);
}
if(redamount > global.Potion_1 || 
yellowamount > global.Potion_2 || 
greenamount > global.Potion_3 ||  
blueamount > global.Potion_4 || 
pinkamount > global.Potion_5)
{
    room_goto(room_lose);

}
	

