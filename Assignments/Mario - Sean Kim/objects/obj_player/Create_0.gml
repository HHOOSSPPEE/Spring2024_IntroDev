// Create Event for obj_player

// Initialize movement variables
playerSpeed = 3; // Example speed, adjust as needed
grv = 0.2; // Gravity affecting the player

// Initialize jumping variables
playerJumpSpeed = -5; // Negative for upward movement, adjust magnitude as needed

// Initialize player state variables
playerX = 0; // Horizontal movement variable, initialized for safety
playerY = 0; // Vertical movement variable, will be modified by gravity and jumping
isGrounded = 0; // Tracks whether Mario is on the ground, 0 = in air, >0 = on ground
size = 1; // Mario's size state: 1 for small, 2 for big
follow = true; // Whether the camera should follow Mario

// Initialize sprite animation speed
image_speed = 0.2; // Default animation speed for Mario's sprite
