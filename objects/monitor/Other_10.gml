/// @description Rewards
	switch(MonitorType){
		case "10 Rings": PlaySound(Rings); Game.Rings+=10;break;
		
		case "Invincibility":	break;
		
		case "SpeedShoes":	break;
		
		case "Extra Life": PlaySound(Rings) Game.Life+=1; break;
		
		case "Eggman":	break;
		
		case "Shield":	PlaySound(ShieldObtain) Player.Shield = S_NORMAL Player.ShieldState = 0; break;
		
		case "Fire Shield":	PlaySound(ShieldObtain) Player.Shield = S_FIRE Player.ShieldState = 0; break;
		
		case "Magnet Shield":	break;
		
		case "Bubble Shield":	break;
	}