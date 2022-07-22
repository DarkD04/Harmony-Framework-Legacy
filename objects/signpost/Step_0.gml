/// @description Script
	if(!Triggered){
		//Culling
		Destructable();	
		
		//Force animation index to eggman
		image_index = 0;
		
		//Trigger the signpost
		if(Player.x > x && Player.y < y){
			PlaySound(SignpostTrigger);
			Triggered = true;
		}
	}
	
	//When signpost is triggered
	if(Triggered){
		//Change sprite to spin
		sprite_index = sprSignpostSpin;
		
		//Disable stage timer
		StageSetup.DisableTimer = true;
		
		//Create sparkle effects
		if(Timer < 225 && Game.ObjectTimer mod 4 = 0) CreateEffect(x+random_range(-32, 32), (y-32)+random_range(-16, 16), sprRingSpark, 0.3);
		
		//Change camera boundaries
		Camera.DestinationRight = x + Camera.CenterX;
		Camera.DestinationLeft = x - Camera.CenterX;
		
		//Add the timer
		Timer += 1;
		
		//Change signpost to player's icon
		if(Timer >= 225){
			sprite_index = sprSignpostStopped;
			image_index = Player.Character + 1;
			
			//Create act clear object
			if(!instance_exists(ActClear)) instance_create_depth(0, 0, HUD.depth, ActClear);
		}
		
	}