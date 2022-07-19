function PlayerCollisionGround(){	
	if(LandTimer < 3) PlayerWallCollision();
	//Detach from ground
	if(!CheckTerrain(-HitboxW, HitboxH+16) && !CheckTerrain(HitboxW, HitboxH+16)){
		Ground = false;
	}
		
	//Slope Down
	if(CheckTerrain(-HitboxW, HitboxH+16) || CheckTerrain(HitboxW, HitboxH+16)){
		while(!CheckTerrain(-HitboxW, HitboxH) && !CheckTerrain(HitboxW, HitboxH)){
			x += XDir;
			y += YDir;
		}
	}
		
	//Slope Up
	while(CheckTerrain(-HitboxW, HitboxH) || CheckTerrain(HitboxW, HitboxH)){
		x -= XDir;
		y -= YDir;
		
	}
	
}