function StatePeelOut(){
	//Stop executing the script if player is not sonic
	if(Character != CHAR_SONIC) exit;
	
	//Check the state
	if(State = ST_LOOKUP&& Input.ActionPress){
		PeeloutRev = 0;
		State = ST_PEELOUT;
		PlaySound(PeelOut);
	}
	
	//If sonic is doing the peelout
	if(State = ST_PEELOUT){
		//Play the correct animation
		if(PeeloutRev >= 0) PlayerAnimation(ANIM_WALK, 2);
		if(PeeloutRev >= 15) PlayerAnimation(ANIM_RUN, 1);
		if(PeeloutRev >= 30) PlayerAnimation(ANIM_PEELOUT, 1);
		
		//Check flags
		InputInterrupt = true;
		CanRoll = false;
		CanJump = false;
		
		//Make player move in air again
		if(!Ground) InputInterrupt = false;
		
		//Stop moving when grounded
		if(Ground) GroundSpeed = 0;
		
		//Add the rev
		PeeloutRev = min(PeeloutRev + 1, 30);
		
		//Release the peelout
		if(!Input.Up){
			Camera.HorizontalLag = 8;
			GroundSpeed = (1+(PeeloutRev/2.3))*Direction;
			State = ST_NONE;
			PlaySound(Release);
			audio_stop_sound(PeelOut);
		}
	}
}