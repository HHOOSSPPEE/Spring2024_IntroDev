draw_self();
var keyLeft = keyboard_check(ord("A"));
var keyRight = keyboard_check(ord("D"));
var keyUp = keyboard_check(ord("W"));
var keyDown = keyboard_check(ord("S"));

if keyLeft
{
	sprite_index = spr_player_left;
}

if keyUp
{
	sprite_index = spr_player_back;
}

if keyDown
{
	sprite_index = spr_player_front;
}

if mouse_check_button_pressed(mb_left)
{
	sprite_index = 	spr_player_fight;
}
	
if keyRight
{
	sprite_index = spr_player_right;
}
