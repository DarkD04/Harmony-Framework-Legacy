function PlayerControl(){
	//Get input difference
	var Movement = Input.Right - Input.Left;
	
	//Stop executing when input is being interrupted
	if(InputInterrupt) exit;
	
	//Ground movement
	if(Ground && State != ST_ROLL){
		//Slope influence
		if(abs(GroundSpeed) >= 0.125 || ControlLock >= 1) GroundSpeed -= dsin(GroundAngle) * SlopeInfluence
		
		//Change direction
		if(ChangeDirection && Movement != 0){
			if(sign(GroundSpeed) = Movement)
				Direction = Movement;
		}
		
		//Control when it isnt locked
		if (ControlLock = 0){
			//Accelerate
			if(Movement != 0 && GroundSpeed <= TopSpeed && GroundSpeed >= -TopSpeed)
				GroundSpeed += Acceleration * Movement;
		
			//Deceleration
			if(Movement = 1 && GroundSpeed < 0 || Movement = -1 && GroundSpeed > 0)
				GroundSpeed += Deceleration * Movement;
			
			//When not holding anything
			if(Movement = 0)
				GroundSpeed -= min(abs(GroundSpeed), Friction) * sign(GroundSpeed); 
		}
	}
	
	if(!Ground){
		//Airdrag
		if (YSpeed >= -4 && YSpeed < 0)
			XSpeed -= (floor(XSpeed / 0.125) / 256);
			
		//Change direction
		if(ChangeDirection && Movement != 0){
			Direction = Movement;
		}
				
		//Accelerate
		if(Movement != 0 && XSpeed <= TopSpeed && XSpeed >= -TopSpeed)
			XSpeed += (Acceleration*2) * Movement;
	}
}