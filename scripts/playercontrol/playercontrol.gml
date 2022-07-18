function PlayerControl(){
	var Movement = Input.Right - Input.Left;
	
	//Ground movement
	if(Ground && !Roll){
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
		//Change direction
		if(ChangeDirection && Movement != 0){
			Direction = Movement;
		}
		
		//Airdrag
		if (YSpeed < 0 && YSpeed > -4)
			XSpeed -= ((XSpeed / 0.125) / 256);
			
		//Accelerate
		if(Movement != 0 && XSpeed <= TopSpeed && XSpeed >= -TopSpeed)
			XSpeed += (Acceleration*2) * Movement;
	}
}