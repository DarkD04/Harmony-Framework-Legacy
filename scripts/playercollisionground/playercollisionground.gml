function PlayerCollisionGround(){	
		
		repeat(16){
		
		//Detach from ground
		if(!CheckTerrain(-HitboxW, HitboxH+16) && !CheckTerrain(HitboxW, HitboxH+16)){
			Ground = false;
		}
		
		//Slope Down
		if(CheckTerrain(-HitboxW, HitboxH+16) || CheckTerrain(HitboxW, HitboxH+16)){
			if(!CheckTerrain(-HitboxW, HitboxH) && !CheckTerrain(HitboxW, HitboxH)){
				x += XDir;
				y += YDir;
			}
		}
		
		//Slope Up
		if(CheckTerrain(-HitboxW, HitboxH) || CheckTerrain(HitboxW, HitboxH)){
			x -= XDir;
			y -= YDir;
		}
	}
}