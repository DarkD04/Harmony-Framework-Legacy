/// @description Value and startup

	//Create capsule button
	Button = instance_create_depth(x, y+1, depth, CapsuleButton);
	Active = false;
	Timer = 0;
	
	//Don't play the animation
	image_speed = 0;