if(place_meeting(x,y,obj_player1)){
	if(global.shield>0&&!global.invincible){
		global.invincible=true;
		global.shield-=1
	    if(room=Room3)global.shield_timer=500;
		else global.shield_timer=2000;
		
	}
}
if(global.shield_timer>0&&global.invincible) global.shield_timer-=1;
if(global.shield_timer==0) global.invincible=false;



//show_debug_message(global.shield_timer)
//show_debug_message(global.shield)
//show_debug_message(global.invincible)