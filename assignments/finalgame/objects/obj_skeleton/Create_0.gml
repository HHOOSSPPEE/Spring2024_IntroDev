enum EnemyState
{
    Idle,
    Chase,
    Attack,
}

state = EnemyState.Idle

aggroRadius = 256;

attackRadius = 64;
attacking = false;

//adding in a sequence

enabled = true; //make it possible to disable enemy while sequence is active

Enable = function ()
{
    enabled = true;
    image_alpha = 1;
}

Disable = function ()
{
    enabled = false;
    alarm[0] = 1;
}

//sequence stuff

activeAnimation = -1;
sequenceLayer = -1;
activeSequence = -1;

StartAnimation = function(_sequence)
{
    activeAnimation = _sequence;
    sequenceLayer = layer_create(-200);
    activeSequence = layer_sequence_create(sequenceLayer, x, y, _sequence);
    layer_sequence_xscale(activeSequence, image_xscale);
    
    Disable();
}

CheckAnimation = function ()
{
    if(activeSequence == undefined) return;
    
    if(layer_sequence_is_finished(activeSequence))
    {
        layer_sequence_destroy(activeSequence);
        layer_destroy(sequenceLayer);
        
        activeAnimation = -1;
        activeSequence = -1;
        sequenceLayer = -1;
        
    }
}