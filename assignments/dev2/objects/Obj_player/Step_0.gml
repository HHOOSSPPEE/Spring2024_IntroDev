if keyboard_check(ord("A")) && !place_meeting(x-3,y,Obj_wall)  
{
	x-= playerspeed;
	sprite_index = Moveplayer;
}
if keyboard_check(ord("D")) && !place_meeting(x+3,y,Obj_wall)  
{
	x += playerspeed;
	sprite_index = Moveplayer;
}
if keyboard_check(ord("S")) && !place_meeting(x,y+3,Obj_wall) 
{
	y += playerspeed;
	sprite_index = Moveplayer;
}
if keyboard_check(ord("W")) && !place_meeting(x,y-3,Obj_wall) 
{
	y -= playerspeed;
	sprite_index = Moveplayer;
}
//player movement and collision detection with the wall




	



