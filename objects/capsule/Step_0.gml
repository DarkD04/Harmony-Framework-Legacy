/// @description Capsule script

	//Button code
	with(Button){
		//When player is on the button
		if(PlayerCheckObject(C_BOTTOM) && !Pressed){
			//Create flickies
			for(var i = 0; i < 10; i++){
				var Animal = instance_create_depth(Capsule.x + random_range(-24, 24), Capsule.y+32, depth, Animals);
				Animal.Delay = 16+(4 * i);
			}
			
			//Create pieces
			var Piece = instance_create_depth(x-20, y+32, depth-200, CapsulePiece)
			Piece.image_index = 1;
			Piece.XSpeed = -2;
			Piece.YSpeed = -4;
			
			var Piece1 = instance_create_depth(x, y+32, depth-200, CapsulePiece)
			Piece1.image_index = 2;
			Piece1.YSpeed = -5;
			
			var Piece2 = instance_create_depth(x+20, y+32, depth-200, CapsulePiece)
			Piece2.image_index = 0;
			Piece2.XSpeed = 2;
			Piece2.YSpeed = -4;
			
			PlaySound(Beep);
			Pressed = true;
			Capsule.Active = true;
		}
		
		//Move the button
		if(Pressed) y = lerp(y, ystart+8, 0.2) else y = lerp(y, ystart, 0.2); 
	}
	
	if(Active){
		//Add the timer
		Timer += 1;
		
		//Change capsule sprite to destroyed
		image_index = 1;
		
		//Lock the camera
		Camera.DestinationLeft = x - Camera.CenterX;
		Camera.DestinationRight = x + Camera.CenterX;
		
		//Exploder
		if(Timer < 32 && Timer mod 4 = 1){
			CreateEffect(x+random_range(-32, 32), y+32+random_range(-32, 32), sprExplosion00, 0.3);
			PlaySound(Destroy);
		}
		
		//Act clear
		if(!instance_exists(ActClear) && Timer = 100){
			StageSetup.DisableTimer = true;
			instance_create_depth(0, 0, HUD.depth, ActClear);
		}
		
	}