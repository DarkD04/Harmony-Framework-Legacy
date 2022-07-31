/// @description Draw tails
	//Draw the player
	if(Player.State = ST_HURT || Player.InvincibleTimer mod 12 >= 6 || Player.InvincibleTimer = 0){
		//Draw after images
		for(var i = 0; i < 3; i++){
			if(Player.SpeedTimer >= 1 && (Player.SpeedTimer+i) mod 8 >= 4){
				if(Player.XSpeed != 0 || Player.YSpeed != 0)
					draw_sprite_ext(RecordAnimation[max(RecordTimer-9+(3*i), 0)], RecordAnimationFrame[max(RecordTimer-9+(3*i), 0)], RecordX[max(RecordTimer-9+(3*i), 0)], RecordY[max(RecordTimer-9+(3*i), 0)], RecordXScale[max(RecordTimer-9+(3*i), 0)], RecordYScale[max(RecordTimer-9+(3*i), 0)], RecordAngle[max(RecordTimer-9+(3*i), 0)], c_white, 1.0);
			}
		}
		//Draw normal player
		draw_sprite_ext(sprite_index, image_index, floor(x), floor(y), image_xscale, image_yscale, image_angle, c_white, 1.0);
	}