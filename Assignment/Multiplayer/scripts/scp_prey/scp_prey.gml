// detect player
function DetectPlayers(alert){
	var dir = 1;
	var closest = room_width;
	var unguard = true;// if no player around, unguard
	with (par_players){
		if (abs(other.x-x)<alertDistance){// if prey too close to player,alert
			alert += alertDistance/100;
			unguard = false;
		}
		if (abs(other.x-x)<closest){
			closest = abs(other.x-x);
			dir = sign(other.x-x);
		}
	}
	if (unguard){
		alert = max(alert-3,0);
	}
	return [alert,dir];
}