// projectile movement
ySpeed+=grv;
x+=xSpeed;
y+=ySpeed;
// change the angle of the arrow
image_angle = (arctan2(-ySpeed, xSpeed) * (180 / pi) - (45));
// collision with preys
var prey = instance_place(x,y,par_preys)
if (prey){
	instance_destroy(prey);
	instance_destroy();
}
// collision with floor
if (place_meeting(x,y,par_collision)){
	instance_destroy();
}

