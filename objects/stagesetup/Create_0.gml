/// @description Values
	StageName = "EMPTY STAGE";
	StageAct = 1;
	StageBGM = noone;
	LoopStart = 0;
	LoopEnd = 0;
	
	//Stage values
	DisableTimer = false;
	Game.StageTimer = 0;
	Game.ObjectTimer = 0;
	//Check checkpoint and set correct values
	if(Game.Checkpoint != noone){
		Player.x = Game.CheckpointX;
		Player.y = Game.CheckpointY;
		Game.StageTimer = Game.CheckpointTimer;
		Game.Rings = Game.CheckpointRing;
	}else{
		Game.Rings = 0;		
	}