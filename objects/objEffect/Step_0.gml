

x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;

if(wob != 0){
	x = xStart + irandom_range(-wob, wob);
	y = yStart + irandom_range(-wob, wob);
}

timeCD --;
if(timeCD < 1){
	instance_destroy();
}