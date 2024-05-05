enum enemy2State
{
	Chase,
	Hurt,
	Death,
	Attack
}

_health = 12;
state = enemy2State.Chase;
_speed = irandom_range(2, 3.5);

life = 1;

path = path_add();
attackRadius = 3;
attacking = false;
attack_point = [0, 0]

attack_timer = 20;
attack_cd = 0;

hurt = false;
enabled = true;

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

activeAnimation= -1;
sequenceLayer = -1;
activeSequence = -1;


StartAnimation = function (_sequence) 
{
    activeAnimation = _sequence;
    sequenceLayer = layer_create(-200);
    activeSequence = layer_sequence_create(sequenceLayer, x, y, _sequence);
    layer_sequence_xscale(activeSequence, image_xscale);
    
    Disable();
}

CheckAnimation = function () 
{
    if (activeSequence == undefined) return;
    
    if (layer_sequence_is_finished(activeSequence)) {
        layer_sequence_destroy(activeSequence);
        layer_destroy(sequenceLayer);
        
        activeAnimation = -1;
        activeSequence = -1;
        sequenceLayer = -1;
        
        Enable();
    }
}
starting_x = x;
starting_y = y;
stuck_checker = 300;