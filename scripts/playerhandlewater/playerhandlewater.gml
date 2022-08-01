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
		
		//Aquaphobia
		if(Underwater){
			Air += 1;
			
			//Play warning sound
			if(Air = 6*60 || Air = 12*60 || Air = 18*60) PlaySound(AirWarning);
			
			//Uh oh drowning music
			if(!audio_is_playing(DrownJingle) && Air = 20 * 60){
				var Jing = audio_play_sound(DrownJingle, 0, false);
				audio_sound_gain(Jing, Game.BGMVolume, 0);
			}
			
			if(Game.ObjectTimer mod 60 = 0 || Game.ObjectTimer mod 60 = 40){
				var _Bubble = instance_create_depth(x, y-4, depth-1, Bubble);
				_Bubble.Type = 0;	
				_Bubble.Angle = random(360);
			}
		}else{
			Air = 0;	
		}
		
		//Stop playing drowning jingle
		if(Air < 20*60) audio_stop_sound(DrownJingle);
		
		//Drown!
		if(Air = 32*60){
			PlaySound(Drown);
			Hurt = H_DROWN;
		}
		
		//Create the countdown
		switch(Air){
			case 20*60:
				var BubbleDrown = instance_create_depth(x+6*Direction, y-4, depth-10, DrowningBubbles);
				BubbleDrown.AnimationSprite = sprBubbleNumber5;
				break;
				
			case 22*60:
				var BubbleDrown = instance_create_depth(x+6*Direction, y-4, depth-10, DrowningBubbles);
				BubbleDrown.AnimationSprite = sprBubbleNumber4;
				break;	
				
			case 24*60:
				var BubbleDrown = instance_create_depth(x+6*Direction, y-4, depth-10, DrowningBubbles);
				BubbleDrown.AnimationSprite = sprBubbleNumber3;
				break;	
				
			case 26*60:
				var BubbleDrown = instance_create_depth(x+6*Direction, y-4, depth-10, DrowningBubbles);
				BubbleDrown.AnimationSprite = sprBubbleNumber2;
				break;	
				
			case 28*60:
				var BubbleDrown = instance_create_depth(x+6*Direction, y-4, depth-10, DrowningBubbles);
				BubbleDrown.AnimationSprite = sprBubbleNumber1;
				break;
				
			case 30*60:
				var BubbleDrown = instance_create_depth(x+6*Direction, y-4, depth-10, DrowningBubbles);
				BubbleDrown.AnimationSprite = sprBubbleNumber0;
				break;	
		}
	}
}