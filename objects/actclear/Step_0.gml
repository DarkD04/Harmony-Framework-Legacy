/// @description Script
	//Trigger when player finally hits the ground
	if(!Player.Ground) exit;
	
	//Make player play victory animation
	with(Player){
		State = -1;
		CanRoll = false;
		CanJump = false;
		InputInterrupt = true;
		GroundSpeed = 0;
		PlayerAnimation(ANIM_VICTORY, 6, 4);
	}
	
	//Add timer
	Timer += 1;
	
	//Fade out
	if(Timer = 1 && State = 0){
		MusicObject.Fade = MusicFadeOut;
		MusicObject.FadeSpeed = 1;
	}
	
	//Play act clear music
	if(Timer = 100 && State = 0){
		MusicObject.Fade = MusicFadeIn;
		MusicObject.FadeSpeed = 1;
		MusicObject.FadeOffset = 1;
		PlayMusic(ZoneComplete, BGM, 0, 0, false);
	}
	
	//Move in card stuff
	if(Timer >= 24)	OffsetX[0] = max(OffsetX[0]-12, 0);
	if(Timer >= 32)	OffsetX[1] = max(OffsetX[1]-12, 0);
	if(Timer >= 40)	OffsetX[2] = max(OffsetX[2]-12, 0);
	if(Timer >= 48)	OffsetX[3] = max(OffsetX[3]-12, 0);
	
	//Subtract from the count
	if(Timer > 450 && State = 0){
		//Subtract time bonus
		if(TimeBonus > 0) {
			TimeBonus -= 100; 
			Game.Score += 100; 
			TotalBonus += 100
		}
		
		//Subtract ring bonus
		if(RingBonus > 0) {
			RingBonus -= 100; 
			Game.Score += 100; 
			TotalBonus += 100
		}
		
		//Play sound
		if(Game.ObjectTimer mod 4 = 0 && TimeBonus > 0 || Game.ObjectTimer mod 4 = 0 && RingBonus > 0)
			PlaySound(ScoreAdd);
		
		//Skip the count down
		if(Input.ActionPress && TimeBonus > 0 || Input.ActionPress && RingBonus > 0){
			//Time bonus skip
			Game.Score += TimeBonus; 
			TotalBonus += TimeBonus;
			TimeBonus -= TimeBonus; 
			
			//Ring bonus skip
			Game.Score += RingBonus; 
			TotalBonus += RingBonus;
			TimeBonus -= RingBonus; 
		}
		
		//No more count down, switch to ending events
		if(TimeBonus = 0 && RingBonus = 0){
			PlaySound(ScoreTally);
			Timer = 0;
			State = 1;
		}
	}
	
	//Ending events
	if(State = 1){
		if(Timer = 80){
			FadeManager.FadeMode = 1;
			FadeManager.FadeSpeed = 5;
		}
		
		//Go to the next stage
		if(Timer = 140) StageResetData();
	}