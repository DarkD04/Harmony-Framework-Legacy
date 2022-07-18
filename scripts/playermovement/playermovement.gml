function PlayerMovement(){
	//Stop executing the script if movement is disabled
	if(!CanMove) exit;
	
	//Change angle modes
	if(GroundAngle >= 0 && GroundAngle <= 45 || GroundAngle >= 315 && GroundAngle <= 360) Mode = 0;
	if(GroundAngle >= 46 && GroundAngle <= 134) Mode = 1;
	if(GroundAngle >= 135 && GroundAngle <= 225) Mode = 2;
	if(GroundAngle >= 226 && GroundAngle <= 314) Mode = 3;
		
	//Change direction
	switch(Mode)
	{
		case 0: XDir = 0; YDir = 1;	break;	
		case 1: XDir = 1; YDir = 0;	break;
		case 2: XDir = 0; YDir = -1;break;	
		case 3: XDir = -1; YDir = 0;break;	
	}
	
	//Update position
	x += XSpeed/Steps;
	y += YSpeed/Steps;
	
	//Set speeds to ground speed
	if(Ground){
		XSpeed = dcos(GroundAngle) * GroundSpeed;	
		YSpeed = -dsin(GroundAngle) * GroundSpeed;	
	}
	
	//Add gravity
	if(!Ground){
		GroundSpeed = XSpeed;
		YSpeed += Gravity/Steps;
	}
	
	//Semi solid flag
	PlatformCheck = true;

	//Disable collision
	if(CheckTerrain(WallRadiusW + 2, -HitboxH-1) || CheckTerrain(-WallRadiusW - 2, -HitboxH-1) || YSpeed <= 0 && !Ground)
		PlatformCheck = false;
}