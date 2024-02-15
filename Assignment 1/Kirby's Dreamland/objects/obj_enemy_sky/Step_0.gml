y += enemy_speed * direct;

//Direction changes
if (y >= end_y || y <= start_y) 
{
    direct *= -1;
}

