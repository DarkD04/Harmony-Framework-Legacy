function StateSpring(){
	if(State = ST_SPRING){
		//Change flags
		InputInterrupt = false;
		ChangeDirection = true;
		CanRoll = false;
		CanJump = false;
		
		//Change animation
		PlayerAnimation(ANIM_SPRING, 6);		

		//Change animation when falling
		if(YSpeed > 0) PlayerAnimation(ANIM_WALK, 8);
		
		//Reset when grounded
		if(Ground) State = ST_NONE;
	}
}