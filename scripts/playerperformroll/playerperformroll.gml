function PlayerPerformRoll(){
	if(State != ST_ROLL && State = ST_NONE && abs(GroundSpeed) > 1 && Input.Down && CanRoll && Ground && CanLand)
	{
		PlaySound(Rolling);
		State = ST_ROLL;
	}
		
	//Roll controls
	if(State = ST_ROLL && Ground)
	{
		//Change animation
		PlayerAnimation(ANIM_ROLL, floor(max(0, 4-abs(GroundSpeed))));
		
		//Rolling physics
		if(sign(GroundSpeed) = sign(dsin(GroundAngle))) GroundSpeed -= 0.078125 * dsin(GroundAngle) else GroundSpeed -= 0.3125 * dsin(GroundAngle)
				
		//Rolling driction
		GroundSpeed = Approach(GroundSpeed, 0, Friction / 2);
				
		//Stop rolling
		if(abs(GroundSpeed) < 0.5) State = ST_NONE;
			
		//Turning to different direction
		if(GroundSpeed > 0 && Input.Left && !Input.Right) GroundSpeed -= 0.125;
		if(GroundSpeed < 0 && !Input.Left && Input.Right) GroundSpeed += 0.125;	
	}
	
	//Player is attacking
	if(State = ST_ROLL) Attacking = true;
	
}