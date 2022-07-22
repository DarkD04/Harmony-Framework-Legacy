/// @description Script
	//Change springs attributes depending on type
	switch(SpringType){
		case "Yellow": SpringPower = 10; sprite_index = sprYellowSpringDiagonal; break;	
		case "Red": SpringPower = 16; sprite_index = sprRedSpringDiagonal; break;	
	}
	
	//Don't play the animation
	if(!Triggered) image_index = 0;
	
	//Trigger the spring(Bottom)
	if(PlayerCheckObject(C_BOTTOM) && Player.x > x + Player.HitboxW && !Triggered && image_xscale > 0 && image_yscale > 0 && Player.YSpeed >= 0){
		Player.Roll = false;
		Player.Jumping = false;
		Player.State = ST_SPRING;
		Player.Ground = false;
		Player.XSpeed = SpringPower;
		Player.YSpeed = -SpringPower;
		Triggered = true;
		image_index = 1;
		PlaySound(Spring)
	}
	
	if(PlayerCheckObject(C_BOTTOM) && Player.x < x - Player.HitboxW && !Triggered && image_xscale < 0 && image_yscale > 0 && Player.YSpeed >= 0){
		Player.Roll = false;
		Player.Jumping = false;
		Player.State = ST_SPRING;
		Player.Ground = false;
		Player.XSpeed = -SpringPower;
		Player.YSpeed = -SpringPower;
		Triggered = true;
		image_index = 1;
		PlaySound(Spring)
	}
	
	//Trigger the spring(Top)
	if(PlayerCheckObject(C_TOP) && Player.x > x + Player.HitboxW && !Triggered && image_xscale > 0 && image_yscale < 0){
		Player.Roll = false;
		Player.Jumping = false;
		Player.State = ST_SPRING;
		Player.Ground = false;
		Player.XSpeed = SpringPower;
		Player.YSpeed = SpringPower;
		Triggered = true;
		image_index = 1;
		PlaySound(Spring)
	}
	
	if(PlayerCheckObject(C_TOP) && Player.x < x - Player.HitboxW && !Triggered && image_xscale < 0 && image_yscale < 0){
		Player.Roll = false;
		Player.Jumping = false;
		Player.State = ST_SPRING;
		Player.Ground = false;
		Player.XSpeed = -SpringPower;
		Player.YSpeed = SpringPower;
		Triggered = true;
		image_index = 1;
		PlaySound(Spring)
	}
	
	//Reset triggered flag when animation is over
	if(image_index = 0) Triggered = false;
	
	

	