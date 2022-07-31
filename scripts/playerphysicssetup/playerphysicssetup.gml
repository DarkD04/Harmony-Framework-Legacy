function PlayerPhysicsSetup(){
	//Normal physics values
	Acceleration = 0.046875;
	Deceleration = 0.5;
	Friction = 0.046875;
	TopSpeed = 6;
	Gravity = 0.21875;
	SlopeInfluence = 0.125;
	JumpSpeed = 6.5;
	
	//Change physics underwater
	if(Underwater){
		Acceleration = 0.0234375;
		Deceleration = 0.25;
		Friction = 0.0234375;
		TopSpeed = 3;
		Gravity = 0.0625;
		SlopeInfluence = 0.125;
		JumpSpeed = 3.5;	
	}
	//Change speed when player has speed shoes
	if(SpeedTimer >= 1){
		Acceleration = 0.046875 * 2;
		Friction = 0.046875 * 2; 
		TopSpeed = 6 * 2;
		
		//Underwater
		if(Underwater){
			Acceleration = 0.0234375*2;
			Friction = 0.0234375*2;
			TopSpeed = 3*2;
		}
	}
	if(State = ST_FLY){
		if(TailsGravity = 0)Gravity = -0.125; else Gravity = 0.03125;
	}
	
	//Misc. subtract speed shoe value
	SpeedTimer = max(SpeedTimer - 1, 0);
	
	//Reset speed shoes jingle
	if(audio_is_playing(SpeedShoeJingle) && SpeedTimer = 0) StopJingle(true, 1);
}