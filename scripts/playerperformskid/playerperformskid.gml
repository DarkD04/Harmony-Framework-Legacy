function PlayerPerformSkid(){
	//if state isn't normal stop executing
	if(State != ST_NONE || Roll || Jumping){
		Skid = false;
		exit;
	}
	
	//Get input difference
	var Movement = Input.Right - Input.Left;
	
	//Trigger skid
	if(Movement = -sign(GroundSpeed) && abs(GroundSpeed) > 4 && !Skid){
		if(GroundAngle <= 45 || GroundAngle >= 315){
			Skid = true;
			PlaySound(Skidding);
		}
	}
	
	//When player is skidding
	if(Skid){
		//Change the flag
		InputInterrupt = true;
		
		//Play animation
		PlayerAnimation(ANIM_SKID, 5);
		
		//When not holding anything
		if(Ground) GroundSpeed -= Deceleration * sign(GroundSpeed);
		
		//Change direction
		if(sign(GroundSpeed) != 0) Direction = sign(GroundSpeed);	
		
		//Stop skidding
		if(abs(GroundSpeed) <= 0.5 || !Ground) Skid = false;
		
		//Create dust effect
		if(Game.ObjectTimer mod 4 = 0) CreateEffect(x+(10*Direction), y+HitboxH-4, sprSkidDust, 0.2);
	}
}