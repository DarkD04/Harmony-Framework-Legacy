function PlayerWallCollision(){
	//Wall collision	
	if(GroundSpeed <= 2){
		while(CheckWall(-WallRadiusW, WallRadiusH))
		{
			x += YDir;
			y += XDir;
		}
	}
		
	if(GroundSpeed >= -2){
		while(CheckWall(WallRadiusW, WallRadiusH))
		{
			x -= YDir;
			y -= XDir;
		}
	}
		
}