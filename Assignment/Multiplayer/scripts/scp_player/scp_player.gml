#region common functions for player 1 & 2
	// check if player double clicked
	function DoubleClick(key,lastKeyPressedTime,doubleClickThreshold,doubleClicked,tired){
		var currentTime = current_time / 1000; // current time in seconds
		if (keyboard_check_pressed(key) && (!tired)){// enable double-click after fatigue state
		    if (currentTime - lastKeyPressedTime <= doubleClickThreshold) {// dash if clicked within threshold
				doubleClicked = true;
			} 
			else {
			    doubleClicked = false;
			}
			lastKeyPressedTime = currentTime; // reset key-pressed time
		}
		if (keyboard_check_released(key)){// disable dash after key released
			doubleClicked = false;
		}
		return [doubleClicked, lastKeyPressedTime];
	}	

	// dash if double clicked, else walk
	function SpeedChange(state,doubleClicked1,doubleClicked2,tired,dashEnergy){
		if ((doubleClicked1 || doubleClicked2) && (!tired) && dashEnergy>=0){// dash if situation fulfilled
			state = Player1State.dash;
		}
		else{// walk and recover dash energy
			state = Player1State.walk;
		}
		return state;
	}
	
	// countdown to the dash time
	function DashCountdown(dashEnergy,tired,doubleClicked1,doubleClicked2){
		if (dashEnergy-- == 0){
			tired = true;
			doubleClicked1 = false;
			doubleClicked2 = false;
		}
		return [tired,doubleClicked1,doubleClicked2,dashEnergy]
	}
	
	// recovery to the dash time
	function DashRecovery(dashEnergy,tired){
		if (dashEnergy++ == 180){
			tired=false;
			dashEnergy=180;
		}
		return [dashEnergy,tired]
	}
	
	// collision check
	function CollisionCheck(playerX,playerY,xSpeed,ySpeed,isGrounded){
		if (place_meeting((playerX+xSpeed),playerY,par_collision)){// horizontal
			while (abs(xSpeed)>0.1){
				xSpeed /= 2;
				if(!place_meeting((playerX+xSpeed),playerY,par_collision)){
					playerX += xSpeed;
				}
			}
			xSpeed = 0;
		}
		if (place_meeting(playerX,(playerY+ySpeed),par_collision)){// vertical
			if (ySpeed > 0 ){
				isGrounded = 6;
			}
	
			while (abs(ySpeed) > 0.1){
				ySpeed /= 2;
				if (!place_meeting(playerX,(playerY+ySpeed),par_collision)){
					playerY += ySpeed;
				}
			}
			ySpeed = 0;
		}
		return [xSpeed,ySpeed]
	}
	
	// state change
	function StateChange(){
	}
	// hiding
	function Hiding(keyDown,state){
		if (keyDown){
			state = Player1State.hide;
		}
		return state
	}
	
	// sniffing
	function Sniffing(keyUp,state){
		if (keyUp){
			state = Player1State.sniff;
		}
		return state
	}
	
#endregion

#region functions for player 1 (dog)
	// dragging preys
#endregion