function StateFly(){
	if(Character = CHAR_TAILS && Jumping && Input.ActionPress && TailsTimer = 0){
		Jumping = false;
		TailsTimer = 480;
		State = ST_FLY;
	}
	
	if(State = ST_FLY){
		//Play correct animations
		if(TailsTimer > 0){
			if(!Underwater) PlayerAnimation(ANIM_FLY, 2); else PlayerAnimation(ANIM_SWIM, 2);
		}else{
			if(!Underwater) PlayerAnimation(ANIM_TIRED, 2); else PlayerAnimation(ANIM_SWIM_TIRED, 2);
		}
		//Speed cap
		if(YSpeed < -2) YSpeed += 0.125;
		
		//Change flags
		InputInterrupt = false;
		CanRoll = false;
		CanJump = false;
		Attacking = true;
		
		//Subtract fly timer
		TailsTimer = max(TailsTimer - 1, 0);
		
		//Change gravity state
		if(TailsTimer > 0  && YSpeed <= -1 || TailsTimer = 0) TailsGravity = 1;
		if(Input.ActionPress && TailsTimer > 0) TailsGravity = 0;
		
		//Play sound
		if(TailsTimer > 0){
			if(!audio_is_playing(TailsFly) && !Underwater) PlaySound(TailsFly);
		}else{
			if(!audio_is_playing(TailsTired) && !Underwater) PlaySound(TailsTired);
			audio_stop_sound(TailsFly);
		}
		
		if(Underwater){
			audio_stop_sound(TailsFly);
			audio_stop_sound(TailsTired);
		}
		
		//Reset the state when grounded
		if(Ground) State = ST_NONE;
	}else{
		audio_stop_sound(TailsFly);
		audio_stop_sound(TailsTired);
		TailsTimer = 0;	
	}
}