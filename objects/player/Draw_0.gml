/// @description Render the player
	
	//Draw the player
	if(State = ST_HURT || InvincibleTimer mod 12 >= 6 || InvincibleTimer = 0){
		//Draw after images
		for(var i = 0; i < 3; i++){
			if(SpeedTimer >= 1 && (SpeedTimer+i) mod 8 >= 4){
				if(XSpeed != 0 || YSpeed != 0)
					draw_sprite_ext(RecordAnimation[max(RecordTimer-9+(3*i), 0)], RecordAnimationFrame[max(RecordTimer-9+(3*i), 0)], RecordX[max(RecordTimer-9+(3*i), 0)] - min(image_xscale, 0), RecordY[max(RecordTimer-9+(3*i), 0)], RecordXScale[max(RecordTimer-9+(3*i), 0)], RecordYScale[max(RecordTimer-9+(3*i), 0)], RecordAngle[max(RecordTimer-9+(3*i), 0)], c_white, 1.0);
			}
		}
		//Draw normal player
		draw_sprite_ext(sprite_index, image_index, floor(x - min(image_xscale, 0)), floor(y), image_xscale, image_yscale, image_angle, c_white, 1.0);
	}
	
	//Draw spindash dust
	if(State = ST_SPINDASH)
		draw_sprite_ext(sprSpindashDust, Game.ObjectTimer/2, floor(x), floor(y) + HitboxH + 1, Direction, 1, 0, c_white, 1.0);
		
		image_xscale = Direction;