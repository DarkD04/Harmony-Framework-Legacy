function GetAngle(){
	//Angle detection
	PlayerAngleModes();

	//Angle points Collision
	repeat(36){
		if !CheckAngle(PointX[0],PointY[0]){
			switch(Mode){
			case 0: PointY[0]+=1; break;
			case 1: PointX[0]+=1; break;
			case 2: PointY[0]-=1; break;
			case 3: PointX[0]-=1; break;
			}
		}
		
		if !CheckAngle(PointX[1],PointY[1]){
			switch(Mode){
			case 0: PointY[1]+=1; break;
			case 1: PointX[1]+=1; break;
			case 2: PointY[1]-=1; break;
			case 3: PointX[1]-=1; break;
			}
		}
	}
	
	AngleX[0] = PointX[0]
	AngleX[1] = PointX[1]
	AngleY[0] = PointY[0]
	AngleY[1] = PointY[1]
	//Get the angle
	return point_direction(PointX[0],PointY[0],PointX[1],PointY[1])
	
}
