function StateKnuxGlide(){
	if(Character = CHAR_KNUX && State = ST_NONE && Jumping && Input.ActionPress){
		GlideSpeed = 4;
		GlideDirection = Direction;
		GlideAngle = 90 * Direction;
		YSpeed = max(YSpeed, 0.5);
		Jumping = false;
		State = ST_GLIDE;
	}
	
	if(State = ST_GLIDE){
		//Flags
		InputInterrupt = true;
		CanRoll = false;
		CanJump = false;
		Attacking = true;
		
		//Change animation
		PlayerAnimation(ANIM_GLIDE, -1);
		AniSubImage = abs(dsin(GlideAngle)*2.1);
		
		//Change gliding direction
		var Movement = Input.Right - Input.Left;
		if(Movement != 0) GlideDirection = Movement;
		
		//Turn
		if(GlideDirection = -1) GlideAngle = max(GlideAngle - 2.8125, -90);
		if(GlideDirection = 1) GlideAngle = min(GlideAngle + 2.8125, 90);
		
		//Change animation direction
		if(XSpeed != 0) Direction = sign(XSpeed);
		
		//Update speeds
		XSpeed = GlideSpeed * dsin(GlideAngle);
		
		//Accelerate
		if(GlideAngle = -90 || GlideAngle = 90) GlideSpeed += 0.015625;
		
		//Fall when not holding action key
		if(!Input.Action){
			XSpeed = 0.25 * Direction;
			YSpeed = 0;
			State = ST_KNUXFALL;
		}
		
		//Change the gravity
		if (YSpeed < 0.5) YSpeed += 0.125;
		if (YSpeed > 0.5) YSpeed -= 0.125;
		
		//Slide when not on ground
		if(Ground){
			State = ST_KNUXSLIDE;
		}
		
		//Stop gliding on steep slopes
		if(Ground && GroundAngle >= 45 && GroundAngle <= 315){
			State = ST_NONE;
		}
	}
}