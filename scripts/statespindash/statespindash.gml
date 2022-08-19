function StateSpindash(){
	//Check the state to trigger
	if(State = ST_LOOKDOWN && Input.ActionPress){
		SpindashRev = 0;
		State = ST_SPINDASH;
	}
		
	//When state is spindashing
	if(State = ST_SPINDASH){
		//Play correct animation
		PlayerAnimation(ANIM_SPINDASH, 1);
		
		//Change flags
		InputInterrupt = true;
		CanRoll = false;
		CanJump = false;
		Attacking = true;
		
		//Make player move in air again
		if(!Ground) InputInterrupt = false;
		
		//Stop moving when grounded
		if(Ground) GroundSpeed = 0;
		
		//Rev up the spindash
		if(Input.ActionPress){
			PlaySound(Spindash);
			AniSubImage = 0;
			SpindashRev = min(SpindashRev + 2, 8);
		}
		
		//Change the pitch of spindash sound
		if(SpindashRev > 2) audio_sound_pitch(Spindash, 1+SpindashRev/16); else audio_sound_pitch(Spindash, 1);
		
		//Release the spindash
		if(!Input.Down){
			PlayerAnimation(ANIM_ROLL, 1);
			audio_stop_sound(Spindash);
			PlaySound(Release);
			Camera.HorizontalLag = 20-SpindashRev;
			GroundSpeed = (8+(floor(SpindashRev)/2))*Direction;
			State = ST_NONE;
			Roll = true;
		}
	}
}