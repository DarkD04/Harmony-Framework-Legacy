/// @description Script
	Angle = (Angle + 16*Player.Direction) mod 360;
	
	switch(Mode){
		case 0:
		x = Player.x;
		y = Player.y;
		depth = Player.depth - 10;
		break;
		
		case 1:
		x = Player.RecordX[max(Player.RecordTimer-3, 0)];
		y = Player.RecordY[max(Player.RecordTimer-3, 0)];
		depth = Player.depth + 2;
		break;
		
		case 2:
		x = Player.RecordX[max(Player.RecordTimer-6, 0)];
		y = Player.RecordY[max(Player.RecordTimer-6, 0)];
		depth = Player.depth + 4;
		break;
	}
	if(!Player.Invincible) instance_destroy();