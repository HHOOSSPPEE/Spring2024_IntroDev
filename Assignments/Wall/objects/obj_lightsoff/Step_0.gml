if(target != noone)
{
	xCam = target.x;
	yCam = target.y;
}

x += (xCam - x);
y += (yCam - y);

timer += 1;

visible = true;

if (timer >= 500)
{
	visible = false;
}

if (timer = 550)
{
	audio_play_sound(snd_Women_Scream___Sound_Effects__HD_, 0, false);
}

if (timer >= 600)
{
	global.gun = true;
}

/*
if keyboard_check(vk_alt)
{
	visible = false;
}
else
{
	visible = true;
}