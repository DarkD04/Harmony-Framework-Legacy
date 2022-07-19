function PlayerWallStopper(){
	//Wall stopper
	if(CheckWall(-WallRadiusW-1, WallRadiusH) && GroundSpeed < 0){
		GroundSpeed = 0;	
		if(!Ground) XSpeed = 0;
	}
		
	if(CheckWall(WallRadiusW+1, WallRadiusH) && GroundSpeed > 0){
		GroundSpeed = 0;
		if(!Ground) XSpeed = 0;
	}
}