function PlayerWallCollision(){
	//Wall collision	
	if(GroundSpeed <= 0){
		while(CheckWall(-WallRadiusW, WallRadiusH))
		{
			x += YDir;
			y += XDir;
		}
	}
		
	if(GroundSpeed >= 0){
		while(CheckWall(WallRadiusW, WallRadiusH))
		{
			x -= YDir;
			y -= YDir;
		}
	}
		
}