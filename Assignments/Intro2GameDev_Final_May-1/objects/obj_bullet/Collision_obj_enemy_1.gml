if(!penetrate)
{
	if(other.state != enemyState.Death)
	{
		instance_destroy();
	}
}
else if(penetrate)
{
	if(penetrate_count>0)
	{
		penetrate_count--;
	}
	else
	{
		instance_destroy();
	}
}

other.hurt = true;
other._health -= damage;
