function PlayerCheckObject(Type){
	//Collision macros
	#macro C_MAIN 0
	#macro C_LEFT 1
	#macro C_RIGHT 2
	#macro C_TOP 3
	#macro C_BOTTOM	4
	
	//Local variables
	var Self, Result;
	
	//Get object ID
	Self = id;
	
	//Now check if player is colliding with object and give it the result
	with(Player){
		switch(Type){
			case C_MAIN: Result = collision_rectangle(round(x)-WallRadiusW, round(y)-HitboxH, round(x)+WallRadiusW, round(y)+HitboxH, Self, true, true); break;
			case C_LEFT: Result = collision_rectangle(round(x)-WallRadiusW-1, round(y)-HitboxH, round(x), round(y)+HitboxH, Self, true, true); break;
			case C_RIGHT: Result = collision_rectangle(round(x), round(y)-HitboxH, round(x)+WallRadiusW+1, round(y)+HitboxH, Self, true, true); break;
			case C_TOP: Result = collision_rectangle(round(x)-WallRadiusW, round(y)-HitboxH-1, round(x)+WallRadiusW, round(y), Self, true, true); break;
			case C_BOTTOM: Result = collision_rectangle(round(x)-WallRadiusW, round(y), round(x)+WallRadiusW, round(y)+HitboxH+1, Self, true, true); break;
		}
	}
	
	//Return the result
	return Result;
}