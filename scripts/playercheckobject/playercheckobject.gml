function PlayerCheckObject(Type, OffsetX = 0, OffsetY = 0){
	//Collision macros
	#macro C_MAIN 0
	#macro C_LEFT 1
	#macro C_RIGHT 2
	#macro C_TOP 3
	#macro C_BOTTOM	4
	#macro C_BOTTOM_BIG	5
	
	//Local variables
	var Self, Result;
	
	//Get object ID
	Self = id;
	
	//Now check if player is colliding with object and give it the result
	with(Player){
		switch(Type){
			case C_MAIN: Result = collision_rectangle(floor(x)-WallRadiusW, floor(y)-HitboxH, floor(x)+WallRadiusW, floor(y)+HitboxH, Self, true, true); break;
			case C_LEFT: Result = collision_rectangle(floor(x)-WallRadiusW-1-OffsetX, floor(y)-HitboxH, floor(x), floor(y)+HitboxH, Self, true, true); break;
			case C_RIGHT: Result = collision_rectangle(floor(x), floor(y)-HitboxH, floor(x)+WallRadiusW+2+OffsetX, floor(y)+HitboxH, Self, true, true); break;
			case C_TOP: Result = collision_rectangle(floor(x)-WallRadiusW, floor(y)-HitboxH-2-OffsetY, floor(x)+WallRadiusW, floor(y), Self, true, true); break;
			case C_BOTTOM: Result = collision_rectangle(floor(x)-WallRadiusW, floor(y), floor(x)+WallRadiusW, floor(y)+HitboxH+2+OffsetY, Self, true, true); break;
			case C_BOTTOM_BIG: Result = collision_rectangle(floor(x)-WallRadiusW, floor(y), floor(x)+WallRadiusW, floor(y)+HitboxH+16, Self, true, true); break;
		}
	}
	
	//Return the result
	return Result;
}