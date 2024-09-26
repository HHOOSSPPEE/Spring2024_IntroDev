enum enemy3State
{
	Chase,
	Hurt,
	Death,
	Attack
}

_health = 8;
state = enemy3State.Chase;
_speed = irandom_range(2, 3);
life = 1;

attack_range = 225;
bullet_range = 275;
bullet_check = true;

path = path_add();
attackRadius = 3;
attacking = false;
attack_point = [0, 0]

attack_timer = 20;
attack_cd = 0;

hurt = false;

starting_x = x;
starting_y = y;
stuck_checker = 300;