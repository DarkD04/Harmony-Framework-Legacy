/// @description Script

	//Update position
	x += XSpeed;
	y += YSpeed;
	
	//Gravity
	YSpeed += 0.2;
	
	//Destroy outside
	if(!OnScreen()) instance_destroy();