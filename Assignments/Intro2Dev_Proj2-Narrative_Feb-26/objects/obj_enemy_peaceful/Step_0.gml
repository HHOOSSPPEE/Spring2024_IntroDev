turning_cd--;

if(turning_cd <= 0)
{
	image_xscale *= -1;
	turning_cd = turning_timer;
}
