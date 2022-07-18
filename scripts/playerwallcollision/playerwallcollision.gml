function PlayerWallCollision(){
	while(CheckWall(-WallRadiusW, WallRadiusH)){
		x += YDir;	
	}
	
	while(CheckWall(WallRadiusW, WallRadiusH)){
		x -= YDir;	
	}
}