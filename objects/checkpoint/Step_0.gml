/// @description Script
	//Render behind the player
	depth = Player.depth + 1;
	
	//Change sprite index
	sprite_index = sprCheckpointBall;
	
	//Change ball's frame
	Frames = Game.ObjectTimer / 4;
	
	//Culling at different cases
	if(Game.Checkpoint != id || Game.Checkpoint = id && Angle >= 720) Destructable(32, 128);
	
	//Trigger the checkpoint
	if(Game.Checkpoint != id && PlayerCheckObject(C_MAIN)){
		Angle = 0;
		Game.Checkpoint = id;
		Game.CheckpointX = x;
		Game.CheckpointY = y-Player.HitboxH-1;
		Game.CheckpointTimer = Game.StageTimer;
		Game.CheckpointRing = Game.Rings;
		PlaySound(Starpost);
	}
	
	if(Game.Checkpoint = id){
		//Add checkpoint angle
		Angle = min(Angle + 20, 720);	
		
		//Make checkpoint active
		if(Angle = 720)sprite_index = sprCheckpointBallActive;
	}