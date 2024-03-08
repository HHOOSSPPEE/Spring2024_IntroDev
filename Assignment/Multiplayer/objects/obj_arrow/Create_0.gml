randomize();
grv = 0.8;
distance += random_range(-50,50);
arg = random_range(800,1000)/1000;// enable arcsin
initialSpeed = sqrt(abs(distance)*grv/arg)
// limit shooting angle 
angleVariable = random(1);
dir = angleVariable==1 ? 1/2*arcsin(arg) : pi/2 - 1/2*arcsin(arg);
ySpeed = -initialSpeed*sin(dir); // Use porjectile to calculate y and x speed
xSpeed = sign(distance)*initialSpeed*cos(dir);




