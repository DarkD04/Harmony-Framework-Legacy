/// @description Set the value
	//Game macro
	#macro Game global
	
	//Character
	Game.Character = CHAR_SONIC;
	
	// Screen values
	Game.ScreenWidth  = 400;
	Game.ScreenHeight = 224;
	Game.ScreenSize   = 2;
	
	//keyboard inputs
	global.up = vk_up;
    global.down = vk_down;
    global.left = vk_left;
    global.right = vk_right;
    global.a = ord("A");
    global.b = ord("S");
    global.c = ord("D");
    global.start = vk_enter;
	
	//Setup volume
	global.BGMVolume = 1;
	global.SFXVolume = 1;
	
	//Stage values
	Game.Score = 0;
	Game.Rings = 0;
	Game.Life = 3;

	//Checkpoint
	Game.Checkpoint = noone;
	Game.CheckpointX = 0;
	Game.CheckpointY = 0;
	Game.CheckpointRing = 0;
	Game.CheckpointTimer = 0;
	
	//Create controllers
	instance_create_depth(0, 0, 0, Window)
	instance_create_depth(0, 0, 0, MusicObject)
	instance_create_depth(0, 0, 0, Input)

	//Ending event
	room_goto_next();
		
