/// @description Script

	//Change springs attributes depending on type
	switch(SpringType){
		case "Yellow": SpringPower = 10; sprite_index = sprYellowSpringHorizontal; break;	
		case "Red": SpringPower = 16; sprite_index = sprRedSpringHorizontal; break;	
	}
	
	//Don't play the animation
	if(!Triggered) image_index = 0;
	
	//Change WallStopper flag depending on the side
	if(image_xscale > 0) WallStopper = sign(max(Player.GroundSpeed, 0));
	if(image_xscale < 0) WallStopper = sign(max(-Player.GroundSpeed, 0));
	
	//Trigger the left side of the spring
	if(PlayerCheckObject(C_LEFT) && !Triggered && image_xscale > 0){
		Player.GroundSpeed = SpringPower;
		Player.XSpeed = SpringPower;
		Player.Direction = 1;
		Player.ControlLock = 16;
		image_index = 1;
		Triggered = true
		PlaySound(Spring);
	}
	
	//Trigger the left side of the spring
	if(PlayerCheckObject(C_RIGHT) && !Triggered && image_xscale < 0){
		Player.GroundSpeed = -SpringPower;
		Player.XSpeed = -SpringPower;
		Player.Direction = -1;
		Player.ControlLock = 16;
		image_index = 1;
		Triggered = true
		PlaySound(Spring);
	}
	
	//Reset triggered flag when animation is over
	if(image_index = 0) Triggered = false;
	
	

	