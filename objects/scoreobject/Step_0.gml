/// @description Script

	//Update the position
	y += YSpeed;
	
	//Friction
	YSpeed = min(YSpeed + 0.09375, 0)
	
	//Stop the animation
	image_speed = 0;
	
	//Age timer
	Age += 1;
	
	//Destroy after 32 frames
	if(Age >= 32) instance_destroy();