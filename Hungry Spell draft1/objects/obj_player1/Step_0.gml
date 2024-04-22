if (keyboard_check(ord("A"))&&!(place_meeting(x-10,y,obj_wall))) {
    x -= moveSpeed;
	 sprite_index = spr_player1_run;
    image_xscale = -1;
	if(x<obj_camera.x+obj_camera.view_width-(130+sprite_width))
	obj_camera.x-=moveSpeed;
}
else if (keyboard_check(ord("D"))&&!(place_meeting(x+10,y,obj_wall))) {
    x += moveSpeed;
	 sprite_index = spr_player1_run;
    image_xscale = 1;
	if(x>obj_camera.x+130) 
obj_camera.x+=moveSpeed;
}
else sprite_index=spr_player1_idle



var keyJump = keyboard_check_pressed(ord("W"));
var endJump = keyboard_check_released(ord("W"));



playerY = playerY + grv;

if (isGrounded > 0 && keyJump) {
    playerY = playerJumpSpeed;
    isGrounded = 0;
    hasJump = true; // 玩家已经跳跃了
	
} else if (keyJump && canDoubleJump&&jumpSpell&&global.value>=10 ) {
    // 如果玩家在空中，还没有进行过二段跳，而且可以进行二段跳
    playerY = playerJumpSpeed; // 为二段跳设置一个新的Y速度
    canDoubleJump = false; // 禁止后续的二段跳
	doubleJump=true
	global.value-=15;
   // hasJump = true; // 玩家已经进行了二段跳
}
else doubleJump=false;


if (place_meeting(x, y + playerY, obj_ground)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6;
		 hasJump = false; // 玩家回到地面，重置跳跃标记
    canDoubleJump = true; // 允许玩家进行下一次的二段跳
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
		isGrounded = 6;
		 hasJump = false; 
    canDoubleJump = true;
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


// 检查是否与obj_jumpCollide的实例在左侧或右侧碰撞
if (place_meeting(x - 1, y, obj_jumpCollide) || place_meeting(x + 1, y, obj_jumpCollide)) {
    var collide = instance_place(x, y, obj_jumpCollide); // 获取碰撞的实例
    if (collide != noone ) { // 检查y坐标是否非常接近，这里的1可以根据需要调整为更小的值
      // show_debug_message(isGrounded>0)
	   y+=5;
	   moveSpeed = 0; // 如果在同一水平线上，停止移动
	   
    }
}
//else if(place_meeting(x+5,y,obj_wall)||(place_meeting(x-5,y,obj_wall))) {

//moveSpeed = 0;


//}
else {
    moveSpeed = 4; // 否则，如果在地面上，则设定移动速度为4
}



if (place_meeting(x, y + playerY, obj_jumpCollide)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6;
		 hasJump = false; 
    canDoubleJump = true; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
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

if (place_meeting(x, y + playerY, obj_wall)) //if colliding with floor tile layer on Y
{ 
	if (playerY > 0)
	{
		isGrounded = 6;
		 hasJump = false; 
    canDoubleJump = true; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, obj_wall)) //use obj_collider too
		{ 
			y += playerY;
			
		}
	}
	
	playerY = 0;
	//show_debug_message(obj_player.y);
}

if (place_meeting(x, y+5 , obj_movingPlatform)) x+=obj_movingPlatform.move_speed;

	
if (place_meeting(x, y+playerY, obj_fallingTrap)) //if colliding with floor tile layer on Y
{ 
	 var trap = instance_place(x, y + playerY, obj_fallingTrap);
	if (playerY > 0)
	{
		
		isGrounded = 6;
		y+=trap.ascendingSpeed
		 hasJump = false; 
    canDoubleJump = true; //this is  our jump buffer - basically a nice little hang time for players to still be able to jump after dropping a bit
	}
	
	while(abs(playerY) > 0.1) 
	{
		playerY *= 0.5; 
		if(!place_meeting(x,y + playerY, trap)) //use obj_collider too
		{ 
			y += playerY;
			
		}
	}
	
	playerY = 0;
	if(trap.isFalling){
		var top= trap.y
		y=top-20;
	playerY +=obj_fallingTrap.vertical_speed	
	}
		
	}
	
	

	//else room_goto(Room1)
	//show_debug_message(obj_player.y);


//show_debug_message(contactFallingTrap);

if(contactFallingTrap&&(place_meeting(x,y-5,obj_jumpCollide)||place_meeting(x,y-5,obj_wall)||place_meeting(x,y-5,obj_movingPlatform))) room_goto(Room1)
	
	//else room_goto(Room1)
	//show_debug_message(obj_player.y);


//show_debug_message(contactFallingTrap);


if(contactFallingTrap&&(place_meeting(x,y-5,obj_jumpCollide)||place_meeting(x,y-5,obj_wall)||place_meeting(x,y-5,obj_movingPlatform))) room_goto(Room1)


























    var inst;
    inst = instance_place(x, y, obj_food);

    if (inst != noone) {
        score1++;
        if(global.value + 20 <= global.max_value)
            global.value += 20;
        else
            global.value = global.max_value;
        
        instance_destroy(inst);
    }



if (global.value <= 0) {
    global.value = 0; 
 
}


// 检测冲刺键按下（这里假设是Shift键）
// 当满足冲刺条件时
// 检查是否可以冲刺并执行冲刺逻辑



if (global.value >= 10 && mouse_check_button_pressed(mb_right) && craftDash) {
    global.value -= 15; // 减少一些资源值以执行冲刺
   
    var trail = instance_create_depth(x, y, depth - 1, obj_trail);
    trail.image_xscale = image_xscale; 

    // 定义冲刺距离和方向
    var dashDirection = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var dashDistance = 200; // 冲刺距离设定
    if(dashDirection > 0){
        trail = instance_create_depth(x + 150, y, depth - 1, obj_trail);
        trail.image_xscale = image_xscale;
    } else {
        trail = instance_create_depth(x - 150, y, depth - 1, obj_trail);
        trail.image_xscale = image_xscale;
    }

    // 计算目标X位置
    var targetX = x + (dashDirection * dashDistance);

    // 如果没有碰撞，则直接移动到目标位置并生成拖尾
    if (!place_meeting(targetX, y, obj_wall)) {
        x = targetX;
       // obj_camera.x = x; // 更新相机位置以跟随玩家
    } else {
        // 如果有碰撞，则一步步地移动，直到找到最近的无碰撞位置
        while (!place_meeting(x + dashDirection, y, obj_wall) && dashDistance > 0) {
            x += dashDirection;
           // obj_camera.x = x; // 每次移动后也更新相机位置
            dashDistance -= 1;
        }
    }
}




if (keyboard_check_pressed(ord("Q"))) // 检查Q键是否被按下
{
    // 对obj_1的处理
    var obj = instance_place(x, y, obj_spellBook);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }
	
	var obj = instance_place(x, y, obj_dashbook);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }
	
	var obj = instance_place(x, y, obj_soul);
    if (obj != noone && obj.visible) {
        ds_list_add(contacted_objects, obj.sprite_index); // 存储sprite_index而非实例ID
        with (obj) { instance_destroy(); } // 销毁实例
    }
	
	
}

// 遍历ds_list检查每个元素
var foundSpellBookIndex = -1;
var foundSoulIndex = -1;
var foundDashBookIndex = -1;

// 先找到对应精灵的索引
for (var i = 0; i < ds_list_size(contacted_objects); i++) {
    var sprite = ds_list_find_value(contacted_objects, i);
    
    if (sprite == spr_spellBook) {
        foundSpellBookIndex = i;
    } else if (sprite == spr_soul) {
        foundSoulIndex = i;
    }
	else if(sprite == spr_dashbook) foundDashBookIndex = i;
    
    // 如果都找到了，可以停止搜索
    if (foundSpellBookIndex != -1 && foundSoulIndex != -1) {
        break;
    }
}

// 如果都找到了并且craft为真，删除它们
if (foundSpellBookIndex != -1 && foundSoulIndex != -1 && craftJump) {
    //show_debug_message("yesss");
    
    // 从列表中删除，从较大的索引开始删除，以避免影响较小索引的位置
    if (foundSoulIndex > foundSpellBookIndex) {
        ds_list_delete(contacted_objects, foundSoulIndex);
        ds_list_delete(contacted_objects, foundSpellBookIndex);
    } else {
        ds_list_delete(contacted_objects, foundSpellBookIndex);
        ds_list_delete(contacted_objects, foundSoulIndex);
    }
	ds_list_add(contacted_objects,spr_spell)
}

if (foundDashBookIndex != -1 && foundSoulIndex != -1 && craftDash) {
    //show_debug_message("yesss");
    
    // 从列表中删除，从较大的索引开始删除，以避免影响较小索引的位置
    if (foundSoulIndex > foundDashBookIndex) {
        ds_list_delete(contacted_objects, foundSoulIndex);
        ds_list_delete(contacted_objects, foundDashBookIndex);
    } else {
        ds_list_delete(contacted_objects, foundDashBookIndex);
        ds_list_delete(contacted_objects, foundSoulIndex);
    }
	ds_list_add(contacted_objects,spr_dashSpell)
}

if(add){
ds_list_add(contacted_objects,spr_BackPack1)
add=false;
}

//if(place_meeting(x,y,obj_monster)){
//	var instance= instance_place(x,y,obj_monster)
//	if(y<instance.y-10){
//		instance.died=true;
//	//instance_destroy(instance);
//	}
//	else room_goto(Room1)
//}

if(mouse_check_button(mb_left)) pro_status=true;
else pro_status=false;

//show_debug_message(pro_status)
if(pro_status){
	craftDash=true;
	jumpSpell=true;
    moveSpeed=6;
	global.minus=0.4
	image_blend = c_fuchsia
}
else{
	craftDash=false;
	jumpSpell=false;
    moveSpeed=3;
	global.minus=0.1;
	 image_blend = c_white;
}

timer++;
if (!pro_status) {
   if(keyboard_check(vk_space)){
   //eating = true; // 开始吃东西
    sprite_index = spr_eatMode; // 切换到吃东西的精灵
	moveSpeed=0;
	eating=true;
   }
   else eating=false;
}

if(x>=7500) room_goto(rm_2)