function StateKnuxFalling(){
	//When falling
	if(State = ST_KNUXFALL){
		//Play the animation
		PlayerAnimation(ANIM_FALLING, 5, 2);
		
		//Flags
		CanRoll = false;
		CanJump = false;
		
		//On the ground
		if(Ground && CanLand){
			//Disable inpts on the ground
			InputInterrupt = true;
			
			//Play the sound
			if(Land) PlaySound(Landed);
			
			//Play the correct animation
			PlayerAnimation(ANIM_LANDED, 2, 4);
			
			//Don't move the player
			GroundSpeed = 0;
			
			//Reset the player's state when animation is over
			if(AniSubImage >= AniSubImageNumber) State = ST_NONE;
		}
	}
}