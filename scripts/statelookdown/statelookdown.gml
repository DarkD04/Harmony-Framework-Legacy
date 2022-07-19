function StateLookDown(){
	//Check and trigger
	if(Ground && !Jumping && !Roll && Input.Down && abs(GroundSpeed) < 0.5 && State = ST_NONE)
		State = ST_LOOKDOWN
		
	//When looking up
	if(State = ST_LOOKDOWN){
		//Play correct animation
		PlayerAnimation(ANIM_LOOKDOWN, 1, 1);
		
		//Change flags
		InputInterrupt = true;
		ChangeDirection = false;
		CanRoll = false;
		CanJump = false;
		
		//Friction (Slow duck)
		GroundSpeed -= min(abs(GroundSpeed), Friction) * sign(GroundSpeed);
		
		//Revert back to normal state
		if(!Input.Down || abs(GroundSpeed) > 1) State = ST_NONE;
	}
}