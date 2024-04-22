enum AnimationType
{
	looped,
	chained,
	finite
}

enum AnimationKey
{
	AnimationType = 0,
	_animation_tag_name = 1,
	_scale_x = 2,
	_scale_y = 3,
	_max_animation_speed = 4,
	_start_frame = 5,
	_end_frame = 6,
	_repeat_amount = 7,
	_next_animation_tag = 8,
}

function animationInit()
{
	_animation_map = ds_map_create();
	_current_animation_tag = "none";
	_animation_iterations = 0;
	image_speed = 0;
}

function animationDestroy()
{
	if (ds_exists(_animation_map, ds_type_map))
	{
		ds_map_destroy(_animation_map);
	}
}

function animationAddAnimation(_animation_tag_name, _scale_x, _scale_y, _max_animation_speed, _start_frame, _end_frame)
{
	_animation_map[? _animation_tag_name] = [AnimationType.looped, _animation_tag_name, _scale_x, _scale_y, _max_animation_speed, _start_frame, _end_frame, noone, noone];
}


function animationAddChainedAnimation(_animation_tag_name, _scale_x, _scale_y, _max_animation_speed, _start_frame, _end_frame, _repeat_amount, _next_animation_tag)
{
	_animation_map[? _animation_tag_name] = [AnimationType.chained, _animation_tag_name, _scale_x, _scale_y, _max_animation_speed, _start_frame, _end_frame, _repeat_amount, _next_animation_tag];
}


function animationAddFiniteAnimation(_animation_tag_name, _scale_x, _scale_y, _max_animation_speed, _start_frame, _end_frame, _repeat_amount)
{
	_animation_map[? _animation_tag_name] = [AnimationType.finite, _animation_tag_name, _scale_x, _scale_y, _max_animation_speed, _start_frame, _end_frame, _repeat_amount, noone];
}


function animationSet(_animation_tag)
{
	if (_current_animation_tag != _animation_tag)
	{
		_current_animation_tag = _animation_tag;
		_animation_iterations = 0;
	}
}

function animationGet()
{
	return _current_animation_tag;
}

function animationStep()
{
	animationStepExtended(_animation_map[? _current_animation_tag][AnimationKey._max_animation_speed])
}

function animationStepExtended(_animation_speed)
{
	if (ds_exists(_animation_map, ds_type_map))
	{
		var checkScaleX = _animation_map[? _current_animation_tag][AnimationKey._scale_x];
		var checkScaleY = _animation_map[? _current_animation_tag][AnimationKey._scale_y];
		
		if (checkScaleX != noone) image_xscale = checkScaleX;
		if (checkScaleX != noone) image_xscale = checkScaleX;
		
		if (is_undefined(_animation_speed))
		{
			image_speed = max(min(_animation_map[? _current_animation_tag][AnimationKey._max_animation_speed], 1), 0);
		}
		else
		{
			image_speed = max(min(min (_animation_speed,_animation_map[? _current_animation_tag][AnimationKey._max_animation_speed]), 1), 0);
		}
		
		var startFrame = _animation_map[? _current_animation_tag][AnimationKey._start_frame];
		var endFrame = _animation_map[? _current_animation_tag][AnimationKey._end_frame];
		var repeatAmount = _animation_map[? _current_animation_tag][AnimationKey._repeat_amount];
		var nextAnimationTag = _animation_map[? _current_animation_tag][AnimationKey._next_animation_tag];
		
		if(floor(image_index) < startFrame)
		{
			image_index = startFrame;
		}
		else if (floor(image_index) > endFrame)
		{
			image_index = startFrame;
		}
		else if (floor(image_index) == endFrame)
		{
			_animation_iterations++;
			switch(_animation_map[? _current_animation_tag][AnimationKey.AnimationType])
			{
				case AnimationType.looped:
					image_index = startFrame;
					break;
				case AnimationType.finite:
					if(_animation_iterations >= repeatAmount)
					{
						image_speed = 0;
					}
					break;
				case AnimationType.chained:
					if(_animation_iterations >= repeatAmount)
					{
						image_speed = 0;
						animationSet(nextAnimationTag);
					}
					break;
			}
		}
	}
}








