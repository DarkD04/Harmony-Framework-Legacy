/// @description Scripts
	//Change frame index
	if(!Triggered) image_index = 0; else image_index = max(image_index, 1);
	
	//Change animation speed
	image_speed = 0.4;
	
	//Subtract delay timer
	Delay = max(Delay-1, 0);
	
	//Stop executing if theres delay
	if(Delay > 0) exit;
	
	//Change depth
	depth = layer_get_depth("Collision");
	
	//Update position
	x += Acceleration[AnimalType]*Direction;
	y += YSpeed;
	YSpeed += Gravity;
	
	//Handle collision
	while(ObjectCheckTerrainPoint(0, 8) && YSpeed > 0){
		if(!Triggered){
			//Change direction
			if(Player.x != x)Direction = sign(x-Player.x);
			image_xscale = Direction;
			
			//Change gravity based on animal type
			Gravity = GravityForce[AnimalType];
			
			//Its triggered
			Triggered = true;	
		}
		y -= 1;	
		YSpeed = -JumpForce[AnimalType];
	}
	
	//Destroy offscreen
	if(!OnScreen(32, 32)) instance_destroy();