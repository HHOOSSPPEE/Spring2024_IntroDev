if event_data[? "event_type"] == "sequence event"
{
    switch (event_data[? "message"])
    {
        case "Enemy_1_AttackEnd":
            attacking = false;
			state = enemyState.Chase;
			break;
    }
}
