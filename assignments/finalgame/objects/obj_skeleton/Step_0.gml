CheckAnimation();
if(enabled == false)
{
    exit;
}

//deciding the state
 if(attacking == false)
 {

    //aggro check


     if(instance_exists(obj_player)) && (point_distance(x, y, obj_player.x, obj_player.y) <= aggroRadius)
        {
        state = EnemyState.Chase;
    }
    else if(instance_exists(obj_player)) && (point_distance(x, y, obj_player.x, obj_player.y) <= aggroRadius)
    {
        state = EnemyState.Idle;
    }
}
// carrying out the state

if (state == EnemyState.Idle)
{
    //idle animation
    sprite_index = spr_enemy_idle;
}

if (state == EnemyState.Chase)
{
    //run animation
    sprite_index = spr_enemy_run;

    //move toward player xy
    x += (obj_player.x - x)/130;
    y += (obj_player.y - y)/130;

    //check character x relative
    if(x < obj_player.x)
        image_xscale = 1;
    else
        image_xscale = -1;
}

if (state == EnemyState.Attack)
{
    attacking = true;

    StartAnimation(seq_enemy_attack);
}
