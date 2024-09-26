/// @description Insert description here

//if(keyboard_check(ord("E"))&&hp>=0){
	
//	hp--;
//}

if(global.value>=0&&!global.ends) global.value-=global.minus;

if(obj_player1.score1>=10) global.minus=0.2;

if(obj_player1.score1>=20) global.minus=0.4;

