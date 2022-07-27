function PlayerPhysicsSetup(){
	//Normal physics values
	Acceleration = 0.046875;
	Deceleration = 0.5;
	Friction = 0.046875;
	TopSpeed = 6;
	Gravity = 0.21875;
	SlopeInfluence = 0.125;
	JumpSpeed = 6.5;
	
	//Change speed when player has speed shoes
	if(SpeedTimer >= 1){
		Acceleration = 0.046875 * 2;
		Friction = 0.046875 * 2; 
		TopSpeed = 6 * 2;
	}
	
	//Misc. subtract speed shoe value
	SpeedTimer = max(SpeedTimer - 1, 0);
	
	//Reset speed shoes jingle
	if(audio_is_playing(SpeedShoeJingle) && SpeedTimer = 0) StopJingle(true, 1);
}