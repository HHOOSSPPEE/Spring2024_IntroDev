/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,Obj_player) && global.isread = false
{
	draw_text(x, y, "Who are you? ");
	draw_text(x,y+20,"Why are you lying here");
}

if place_meeting(x,y,Obj_player) && global.isread = true
{
	draw_text(x, y, "I knew you peeked at my diary ");
	draw_text(x,y+20,"Don't tell them, I beg you");
	draw_text(x,y+40,"Please!!");
}
