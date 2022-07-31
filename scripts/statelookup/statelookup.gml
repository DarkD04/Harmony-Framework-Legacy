function StateLookUp(){
	//Check and trigger
	if(Ground && !Jumping && !Roll && Input.Up && GroundSpeed = 0 && State = ST_NONE)
		State = ST_LOOKUP
		
	//When looking up
	if(State = ST_LOOKUP){
		//Play correct animation
		switch(Character){
			case CHAR_KNUX: PlayerAnimation(ANIM_LOOKUP, 3, 2); break;
			default: PlayerAnimation(ANIM_LOOKUP, 1); break;
		}
		
		//Change flags
		InputInterrupt = true;
		ChangeDirection = false;
		CanRoll = false;
		CanJump = false;
		
		//Revert back to normal state
		if(!Input.Up || abs(GroundSpeed) > 0.5) State = ST_NONE;
	}
}