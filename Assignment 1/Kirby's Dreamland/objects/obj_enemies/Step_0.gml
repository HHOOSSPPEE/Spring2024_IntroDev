x += enemy_speed * direct;

//Direction changes
if (x >= end_x || x <= start_x) 
{
    direct *= -1;
}

image_xscale = direct * -1;