playerX = 0;
playerY = 0;

playerSpeed = 5;

animationInit();
animationAddAnimation("IDLE_DOWN", noone, noone, 2, 1, 2);
animationAddAnimation("WALK_LEFT", 1, 1, 6, 7, 10);
animationAddAnimation("WALK_RIGHT", -1, -1, 6, 7, 10);
animationAddAnimation("WALK_UP", 1, 1, 6, 15, 18);
animationAddAnimation("WALK_DOWN", 1, 1, 6, 11, 14);

animationSet("IDLE_DOWN");