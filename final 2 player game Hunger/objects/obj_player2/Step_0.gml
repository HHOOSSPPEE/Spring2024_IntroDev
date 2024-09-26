


if (keyboard_check(ord("A"))) {
    x -= moveSpeed;
	 sprite_index = Sprite9;
    image_xscale = -1;
}
else if (keyboard_check(ord("D"))) {
    x += moveSpeed;
	 sprite_index = Sprite9;
    image_xscale = 1;
}
else sprite_index=spr_player2_idle



var inst;
inst = instance_place(x, y, obj_food);

if (global.value2 > 0) {
    var inst;
    inst = instance_place(x, y, obj_food);

    if (inst != noone) {
        score2++;
        if(global.value2 + 10 <= global.max_value)
            global.value2 += 10;
        else
            global.value2 = global.max_value;
        
        instance_destroy(inst);
    }
}

// 当 global.value <= 0，停止玩家与食物互动
// 并且保持 global.value = 0
if (global.value2 <= 0&&!global.ends) {
    global.value2 = 0; 
	global.ends=true;
	global.winner="player1";
    visible = false;
}


var keyJump = keyboard_check_pressed(ord("W"));
var endJump = keyboard_check_released(ord("W"));

//where are we going

playerY = playerY + grv;

//check if can jump
if(isGrounded-- > 0 && keyJump)
{
	playerY = playerJumpSpeed;
    playerSpeed=0
	isGrounded = 0;
}
if(endJump&&hasJump){
	playerY=dropgrv;
	
	isGrounded=0;
	hasJump=true;
}

if (place_meeting(x, y + playerY, obj_ground)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_ground)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
	//show_debug_message(obj_player.y);
}

if (place_meeting(x, y + playerY, obj_jumpCollide)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_jumpCollide)) //use obj_collider too
		{ 
			y += playerY;
		}
	}
	
	playerY = 0;
	//show_debug_message(obj_player.y);
}



y += playerY; //now we move

if(place_meeting(x,y,obj_jumpCollide)&&place_meeting(x,y,obj_jumpCollide)) {
	moveSpeed=0;
	y+=5;
}
else if(isGrounded>0){
	moveSpeed=4;
	
	
}







if (global.value2>=10&&keyboard_check_pressed(vk_space)) {
     global.value2-=3;
	
    if (keyboard_check(ord("D")) ) { // 向右冲刺
        // 检查是否会与物体碰撞，避免穿墙
        if (!place_meeting(x + dashDistance, y, obj_jumpCollide)) {
            x += dashDistance;
        } else {
            // 如果直接冲刺会穿墙，则移动到距离障碍物最近的位置
            while (!place_meeting(x + 1, y, obj_jumpCollide) && dashDistance > 0) {
                x += 1;
                dashDistance -= 1;
            }
        }
    } else if (keyboard_check(ord("A"))) { // 向左冲刺
        if (!place_meeting(x - dashDistance, y, obj_jumpCollide)) {
            x -= dashDistance;
        } else {
            while (!place_meeting(x - 1, y, obj_jumpCollide) && dashDistance > 0) {
                x -= 1;
                dashDistance -= 1;
            }
        }
    }
}
