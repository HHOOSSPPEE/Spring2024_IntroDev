/// @description Insert description here
// You can write your code in this editor
draw_text(mouse_x,mouse_y,"press Q to start");

if(keyboard_check_released(ord("Q")))
{
	instance_destroy();
}
