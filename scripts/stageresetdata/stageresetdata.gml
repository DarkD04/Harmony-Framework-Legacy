function StageResetData(){
	//Restart global values
	Game.Checkpoint = noone;
	Game.CheckpointX = 0;
	Game.CheckpointY = 0;
	Game.CheckpointRing = 0;
	Game.CheckpointTimer = 0;
	Game.Rings = 0;
	Game.StageTimer = 0;
	Game.ObjectTimer = 0;
	
	//Go to next stage
	room_goto(StageSetup.NextLevel);
}