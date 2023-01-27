function PlayerSemiSolid(){
	//Semi solid flag
	PlatformCheck = true;

	//Disable collision
	if(CheckTerrain(WallRadiusW, -HitboxH-1) || CheckTerrain(-WallRadiusW, -HitboxH-1) || YSpeed <= 0 && !Ground)
		PlatformCheck = false;
}