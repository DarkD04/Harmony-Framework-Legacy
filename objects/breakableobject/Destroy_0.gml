/// @description Create pieces
	//Breakable walls
	if(BreakableType = "Breakable Wall"){
		//Local variables
		var SizeX, SizeY, Object, Direction;
	
		//Define sizes
		SizeX = sprite_width / 16;
		SizeY = sprite_height / 16;
		
		//Set the direction
		Direction = -sign(Player.GroundSpeed);
		
		//Play the sound
		PlaySound(BreakableBlock);
		
		//Run loop and create pieces
		for(var i = 0; i < SizeX; i++){
			for(var j = 0; j < SizeY; j++){
				//Create the object
				Object = instance_create_depth(x+(16*i), y+(16*j), depth-300, BreakablePiece);
			
				//Set the object values
				Object.sprite_index = sprite_index;
				Object.Left = 16*i;
				Object.Top = 16*j;
				Object.XSpeed = Direction*(SizeX+2)+i;
				Object.YSpeed = -((SizeY/2)+3)+j;
			}
		}
	}
	
	if(BreakableType = "Breakable Block"){
		//Local variables
		var SizeX, SizeY, Object;
	
		//Define sizes
		SizeX = sprite_width / 16;
		SizeY = sprite_height / 16;
		
		//Play the sound
		PlaySound(BreakableBlock);
		
		//Run loop and create pieces
		for(var i = 0; i < SizeX; i++){
			for(var j = 0; j < SizeY; j++){
				//Create the object
				Object = instance_create_depth(x+(16*i), y+(16*j), depth-300, BreakablePiece);
			
				//Set the object values
				Object.sprite_index = sprite_index;
				Object.Left = 16*i;
				Object.Top = 16*j;
				Object.XSpeed = i-SizeX/2+0.5
				Object.YSpeed = -(SizeY+2)+j;
				
				//Rebound the player
				Player.YSpeed = abs(Player.YSpeed)*-1;
			}
		}
	}