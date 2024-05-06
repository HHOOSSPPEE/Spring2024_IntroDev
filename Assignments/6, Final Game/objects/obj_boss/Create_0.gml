hp = 20;
damage = 3;
spd = 100;
can_hurt = true;
timer = 0;
safe_time = 60;
can_damage = true;

//follow ai
enum EnemyState
{
	Idle,
	Chase,
	Anne,
}

state = EnemyState.Idle;

aggroRadius = 350;