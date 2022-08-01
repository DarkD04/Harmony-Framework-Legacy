function PlayerFallCases(){
	//Trigger control lock
	if(abs(GroundSpeed) <= 2.5 && GroundAngle >= 45 && GroundAngle <= 315 && ControlLock = 0){
		//Lock the controls for 30 frames
		ControlLock = 30;
		
		//Fully detach
		if(GroundAngle >= 70 && GroundAngle <= 240) Ground = false;
	}
	
	//Subtract control lock timer
	ControlLock = max(ControlLock - 1, 0);
	LandTimer = max(LandTimer - 1, 0);
}