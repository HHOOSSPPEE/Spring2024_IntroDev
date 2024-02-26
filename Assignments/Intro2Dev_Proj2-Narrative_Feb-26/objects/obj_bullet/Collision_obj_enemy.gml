/// @description Insert description here
// You can write your code in this editor

other.hurt = true;
if(two_frame > other.x)
{
	other.x -= knockback;
}
else if (two_frame < other.x)
{
	other.x += knockback;
}
instance_destroy();