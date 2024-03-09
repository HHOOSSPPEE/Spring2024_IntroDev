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
	function SpeedChange(state,doubleClicked1,doubleClicked2,tired,dashEnergy,dashState,walkState){
		if ((doubleClicked1 || doubleClicked2) && (!tired) && dashEnergy>=0){// dash if situation fulfilled
			state = dashState;
		}
		else{// walk and recover dash energy
			state = walkState;
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
	
#endregion

#region functions for player 1 (dog)
	// switch to dragging state
	function Dragging(keyDown,state){
		if (keyDown){
			state = Player1State.drag;
		}
		return state
	}
	
	// switch to sniffing state
	function Sniffing(keyUp,state){
		if (keyUp){
			state = Player1State.sniff;
		}
		return state
	}
	
	// detect preys from large distance
	function PreysTracking(){
		// is prey on left, right, or too far
		var right = false;
		var left = false;
		with (par_preys){
			// check if enemies within certain area
			var outerBound = (x > obj_camera.x-obj_camera.camWidth*1.5 && x < obj_camera.x+obj_camera.camWidth*1.5
			&& y > obj_camera.y-obj_camera.camHeight*2 && y < obj_camera.y+obj_camera.camHeight*2);
			var innerBound = (x > obj_camera.x-obj_camera.camWidth/1.8 && x < obj_camera.x+obj_camera.camWidth/1.8
			&& y > obj_camera.y-obj_camera.camHeight/2 && y < obj_camera.y+obj_camera.camHeight/2);

			if (outerBound && !innerBound){
				// direction of prey
				if (x-other.x<=0){
					left = true;
				}
				else{
					right = true;
				}
			}
		}
		return [left,right];
	}	
#endregion

#region functions for player 2 (hunter)
	// switch to hiding state
	function Hiding(keyDown,state){
		if (keyDown){
			state = Player2State.hide;
		}
		return state
	}
	
	// switch to shooting state
	function Shooting(keyUp,state){
		if (keyUp){
			state = Player2State.shoot;
		}
		return state
	}
	
	// create arrow
	function CreateArrow(playerX,playerY,spriteWidth,spriteHeight,shootDistance){
		var arrowStruct =
		{
			distance : shootDistance
		};
		instance_create_layer((playerX+spriteWidth/2),(playerY+spriteHeight/2),"ArrowInstances",obj_arrow,arrowStruct)
	}
	
	// detect preys
	function DetectPreys(preysInScreenL,preysInScreenR){
		with (par_preys){
			// check if enemies within screen
			if (x > obj_camera.x-obj_camera.camWidth/2 && x < obj_camera.x+obj_camera.camWidth/2
			&& y > obj_camera.y-obj_camera.camHeight/2 && y < obj_camera.y+obj_camera.camHeight/2){
				// distance from player to prey
				var distance = self.x-other.x;
				if (distance<=0){
					other.preysInScreenL[array_length(other.preysInScreenL)] = (distance);
				}
				else{
					other.preysInScreenR[array_length(other.preysInScreenR)] = (distance);
				}
			}
		}
		return [other.preysInScreenL,other.preysInScreenR];
	}
	
	// check which prey closest
	function ClosestPrey(preysInScreenL,preysInScreenR,lastKeyPressTimeL,lastKeyPressTimeR){
		var lastKeyPressed = (lastKeyPressTimeL>lastKeyPressTimeR) ? -1 : 1;// -1 if last key is left, 1 if right
		// randomly shoot if no prey detected
		var closest = random_range(300,500)*lastKeyPressed;
		var front = lastKeyPressed>1 ? preysInScreenR : preysInScreenL;
		var back = lastKeyPressed>1 ? preysInScreenL : preysInScreenR;
		if (array_length(front)!=0){
			closest = front[0];
			for (i=1;i<array_length(front);i++){
				// if left key pressed, check preys on the left, and vice versa
				if (abs(front[i])<abs(closest)){
					closest = front[i];
				}
			}
		}
		else if (array_length(front)==0 && array_length(back)!=0){
			closest = back[0];
			for (i=1;i<array_length(back);i++){
				// if left key pressed, check preys on the left, and vice versa
				if (abs(back[i])<abs(closest)){
					closest = back[i];
				}
			}
		}
		return closest;
	}

		
#endregion