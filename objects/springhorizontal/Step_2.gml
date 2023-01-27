/// @description Script

	//Change springs attributes depending on type
	switch(SpringType){
		case "Yellow": SpringPower = 10; sprite_index = sprYellowSpringHorizontal; break;	
		case "Red": SpringPower = 16; sprite_index = sprRedSpringHorizontal; break;	
	}
	
	//Wall stoppers
	if(image_xscale < 0 && PlayerCheckObject(C_RIGHT, 16)) Player.WallStopper = false;
	if(image_xscale > 0 && PlayerCheckObject(C_LEFT, 16)) Player.WallStopper = false;
	
	//Don't play the animation
	if(!Triggered) image_index = 0;
	
	//Trigger the left side of the spring
	if(PlayerCheckObject(C_LEFT) && !Triggered && image_xscale > 0){
		if(Player.State = ST_GLIDE || Player.State = ST_CLIMB) {
			Player.State = ST_NONE;
			with(Player) PlayerAnimation(ANIM_RUN, 2);
		}
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
		if(Player.State = ST_GLIDE || Player.State = ST_CLIMB) {
			Player.State = ST_NONE;
			with(Player) PlayerAnimation(ANIM_RUN, 2);
		}
		Player.GroundSpeed = -SpringPower;
		Player.XSpeed = -SpringPower;
		Player.Direction = -1;
		Player.ControlLock = 16;
		image_index = 1;
		Triggered = true
		PlaySound(Spring);
	}
	
	//Reset triggered flag when animation is over
	if(image_index > 0 && image_index < 1) Triggered = false;
	
	

	