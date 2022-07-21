function PlayerAngleModes(){
	//Only for ceiling landing
	if(!Ground){
		if CheckTerrain(-HitboxW,-HitboxH-1) && !CheckTerrain(HitboxW,-HitboxH-1){
			TileX = -HitboxW+x;
			PointX[0] = 16*floor(TileX/16)+15
			PointX[1] = 16*floor(TileX/16)
			PointY[0] = floor(y);
			PointY[1] = floor(y);
		}
		
		if !CheckTerrain(-HitboxW,-HitboxH-1) && CheckTerrain(HitboxW,-HitboxH-1){
			TileX = HitboxW+x;
			PointX[0] = 16*floor(TileX/16)+15
			PointX[1] = 16*floor(TileX/16)
			PointY[0] = floor(y);
			PointY[1] = floor(y);
		}
	}
	
	//Ground
	if(Ground){
		switch(Mode){
			case 0:
			if CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				PointX[0] = floor(x)-HitboxW
				PointX[1] = floor(x)+HitboxW
				PointY[0] = floor(y);
				PointY[1] = floor(y);
			}
		
			if CheckTerrain(-HitboxW,HitboxH+1) && !CheckTerrain(HitboxW,HitboxH+1){
				TileX = -HitboxW+x;
				PointX[0] = 16*floor(TileX/16)
				PointX[1] = 16*floor(TileX/16)+15
				PointY[0] = floor(y);
				PointY[1] = floor(y);
			}
		
			if !CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				TileX = HitboxW+x;
				PointX[0] = 16*floor(TileX/16)
				PointX[1] = 16*floor(TileX/16)+15
				PointY[0] = floor(y);
				PointY[1] = floor(y);
			}
		    break;
		
			case 1:
			if CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				PointX[0] = floor(y)
				PointX[1] = floor(y)
				PointY[0] = floor(x)+HitboxW;
				PointY[1] = floor(x)-HitboxH;
			}
		
			if CheckTerrain(-HitboxW,HitboxH+1) && !CheckTerrain(HitboxW,HitboxH+1){
				TileX = -HitboxW+y;
				PointY[0] = 16*floor(TileX/16)+31
				PointY[1] = 16*floor(TileX/16)+16
				PointX[0] = floor(x);
				PointX[1] = floor(x);
			}
		
			if !CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				TileX = -HitboxW+y;
				PointY[0] = 16*floor(TileX/16)+15
				PointY[1] = 16*floor(TileX/16)
				PointX[0] = floor(x);
				PointX[1] = floor(x);
			}
		    break;
		
			case 2:
			if CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				PointX[0] = floor(x)+HitboxW
				PointX[1] = floor(x)-HitboxW
				PointY[0] = floor(y);
				PointY[1] = floor(y);
			}
		
			if CheckTerrain(-HitboxW,HitboxH+1) && !CheckTerrain(HitboxW,HitboxH+1){
				TileX = -HitboxW+x;
				PointX[0] = 16*floor(TileX/16)+15
				PointX[1] = 16*floor(TileX/16)
				PointY[0] = floor(y);
				PointY[1] = floor(y);
			}
		
			if !CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				TileX = HitboxW+x;
				PointX[0] = 16*floor(TileX/16)+15
				PointX[1] = 16*floor(TileX/16)
				PointY[0] = floor(y);
				PointY[1] = floor(y);
			}
		    break;
			case 3:
			if CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				PointX[0] = floor(x)
				PointX[1] = floor(x)
				PointY[0] = floor(y)-HitboxW;
				PointY[1] = floor(y)+HitboxW
			}
		
			if CheckTerrain(-HitboxW,HitboxH+1) && !CheckTerrain(HitboxW,HitboxH+1){
				TileX = -HitboxW+y;
				PointY[0] = 16*floor(TileX/16)
				PointY[1] = 16*floor(TileX/16)+15
				PointX[0] = floor(x);
				PointX[1] = floor(x);
			}
		
			if !CheckTerrain(-HitboxW,HitboxH+1) && CheckTerrain(HitboxW,HitboxH+1){
				TileX = HitboxW+y;
				PointY[0] = 16*floor(TileX/16)
				PointY[1] = 16*floor(TileX/16)+15
				PointX[0] = floor(x);
				PointX[1] = floor(x);
			}
		    break;
	
		}
	}
}
