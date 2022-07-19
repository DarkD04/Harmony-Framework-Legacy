function PlayerWallCollision(){
	
	//Wall collision		
	while(CheckWall(-WallRadiusW, WallRadiusH) && GroundSpeed <= 0)
	{
		x += YDir;
		y += XDir;
	}
	
		
	while(CheckWall(WallRadiusW, WallRadiusH) && GroundSpeed >= 0)
	{
		x -= YDir;
		y -= XDir;
	}
	
}