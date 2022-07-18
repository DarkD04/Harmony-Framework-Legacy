/// @description Set the value
	
	//Game macro
	#macro Game global
	
	// Screen values
	Game.windowWidth  = 426;
	Game.windowHeight = 240;
	Game.windowSize   = 2;
	
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
	
	//Create controllers
	instance_create_depth(0, 0, 0, Window)
	instance_create_depth(0, 0, 0, MusicObject)
	instance_create_depth(0, 0, 0, Input)

	//Ending event
	room_goto_next();
		
