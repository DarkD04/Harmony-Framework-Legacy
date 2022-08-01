function StateKnuxSlide(){
	if(State = ST_KNUXSLIDE){
		//Play the correct animation
		if(GroundSpeed != 0) PlayerAnimation(ANIM_SLIDE, 1);
		
		//Flags
		InputInterrupt = true;
		CanRoll = false;
		Attacking = true;
		
		//Friction
		GroundSpeed -= min(abs(GroundSpeed), 0.125) * sign(GroundSpeed);
		
		//Effects when sliding
		if(GroundSpeed != 0 && Game.ObjectTimer mod 6 = 0 && Ground){
			//Create dust
			CreateEffect(x, y+HitboxH, sprSkidDust, 0.3);
			
			//Play sound
			PlaySound(Slide);
		}
		
		//When player is not moving
		if(GroundSpeed = 0){
			//Play the correct animation
			PlayerAnimation(ANIM_GETUP, 8, 3);
			
			//Reset the state
			if(AniSubImage >= 2)
				State = ST_NONE;
			
		}
	}
}