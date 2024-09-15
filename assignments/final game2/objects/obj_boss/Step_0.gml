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
        state = SkeletonState.Chase;
    }
    else if(instance_exists(obj_player)) && (point_distance(x, y, obj_player.x, obj_player.y) <= aggroRadius)
    {
        state = SkeletonState.Idle;
    }
}
// carrying out the state

if (state == SkeletonState.Idle)
{
    //idle animation
    sprite_index = spr_skeleton_idle;
}

if (state == SkeletonState.Chase)
{
    //run animation
    sprite_index = spr_skeleton_run;

    //move toward player xy
    x += (obj_player.x - x)/130;
    y += (obj_player.y - y)/130;

    //check character x relative
    if(x < obj_player.x)
        image_xscale = 1;
    else
        image_xscale = -1;
}

if (state == SkeletonState.Attack)
{
    attacking = true;

    StartAnimation(seq_skeleton_atk);
}

if (state == SkeletonState.Death)
{
	StartAnimation = (seq_skeleton_death);
}

if(mouse_check_button_pressed(mb_left) && place_meeting(x -15 ,y, obj_player))
{
	hp --;
}

if (hp == 0)
{
	instance_destroy(self);	
}