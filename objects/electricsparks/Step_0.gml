/// @description Move the sparkles
	x += 2*dsin(Angle);
	y += 2*dcos(Angle);
	
	//Destroy the sparkles
	if(image_index >= image_number-1) instance_destroy();