
score1=0;

playerY = 0;
playerJumpSpeed = -13;
isGrounded = 0;
dropgrv=1;
hasJump=true;
grv = 0.5;
moveSpeed=1;
dashDistance = 100; 


contacted_objects = ds_list_create(); 

contactFallingTrap=false;
 iconSize = 32; // Sprite的大小
 padding = 40; // Sprite之间的间距
 startX = 10; // 清单开始的X坐标
 startY = 300; // 清单开始的Y坐标
 
 pro_status=false;
 eating=false;
 craftJump=true;
 craftDash=false;
 canDash=true;
 doubleJump=true;
 canDoubleJump=true;
 jumpSpell=false;
 
add=true;
inventory=false;

isMoving=false;
OnPlatform=false;
contactTrap=false;

timer=0;