x += enemy_speed_x * direct_x;

//Direction changes
if (x >= end_x || x <= start_x) 
{
    direct_x *= -1;
}

//image_xscale = direct_y * -1;

y += enemy_speed_y * direct_y;

//Direction changes
if (y >= end_y || y <= start_y) 
{
    direct_y *= -1;
}