/// @description Script
	//Add frames
	Frames += image_speed;
	
	//Disable animation loop
	image_index = min(Frames, image_number-1);
	
	//Destroy if animation is done
	if(Frames >= image_number)
		instance_destroy(id);
		
	//Destroy if effect is off-screen
	if(!OnScreen(16, 16))
		instance_destroy(id);
