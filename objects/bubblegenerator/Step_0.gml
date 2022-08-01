/// @description Script
	//Culling
	Destructable();
	
	/*Delay--;
	
	if(Delay < 0){
		var Random = random(5);
		var _Bubble = instance_create_depth(x, y-4, depth-1, Bubble);
		_Bubble.Type = BubbleSet[Random];
		
		Delay = BubbleRandom();
	}*/
	
	if(Game.ObjectTimer mod 180 = 0 || Game.ObjectTimer mod 180 = 40){
		var _Bubble = instance_create_depth(x, y-4, depth-1, Bubble);
		_Bubble.Type = 0;	
		_Bubble.Angle = random(360);
	}
	
	if(Game.ObjectTimer mod 240 = 20){
		var _Bubble = instance_create_depth(x, y-4, depth-1, Bubble);
		_Bubble.Type = 1;	
		_Bubble.Angle = random(360);
	}
	
	if(Game.ObjectTimer mod 360 = 80){
		var _Bubble = instance_create_depth(x, y-4, depth-1, Bubble);
		_Bubble.Type = 2;	
		_Bubble.Angle = random(360);
	}