randomize();
hp = 15;

x = random(1) * room_width;
y = random(1) * room_height;
while (place_meeting(x,y,obj_player)){
	x = random(1) * room_width;
	y = random(1) * room_height;
}
	
speed = 2;