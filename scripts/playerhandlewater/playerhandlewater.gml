function PlayerHandleWater(){
	if(instance_exists(Water)){
		//Enter the water
		if(y > Water.y && !Underwater){
			XSpeed *= 0.5;	
			YSpeed *= 0.25;	
			Underwater = true;
			CreateEffect(x, Water.y, sprWaterSplash, 0.2);
			PlaySound(WaterSplash);
		}
		
		//Exit the water
		if(y < Water.y && Underwater){
			if(Jumping) YSpeed *= 2;	
			Underwater = false;
			CreateEffect(x, Water.y, sprWaterSplash, 0.2);
			PlaySound(WaterSplash);
		}
	}
}