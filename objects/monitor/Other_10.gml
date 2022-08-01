/// @description Rewards
	switch(MonitorType){
		case "10 Rings": PlaySound(Rings); Game.Rings+=10;break;
		
		case "Invincibility": Player.InvincibleTimer = 1300; Player.Invincible = true; PlayMusic(Invincibility, Jingle, 0, 0) break;
		
		case "SpeedShoes": Player.SpeedTimer = 1300; PlayMusic(SpeedShoeJingle, Jingle, 0, 0) break;
		
		case "Extra Life": PlaySound(Rings) Game.Life+=1; break;
		
		case "Eggman": Player.Hurt = H_KNOCKOUT	break;
		
		case "Shield":	PlaySound(ShieldObtain) Player.Shield = S_NORMAL Player.ShieldState = 0; break;
		
		case "Fire Shield":	PlaySound(FireshieldObtain) Player.Shield = S_FIRE Player.ShieldState = 0; break;
		
		case "Magnet Shield": PlaySound(ElectricshieldObtain) Player.Shield = S_ELECTRIC Player.ShieldState = 0; break;
		
		case "Bubble Shield": PlaySound(BubbleshieldObtain) Player.Shield = S_BUBBLE Player.ShieldState = 0; break;
	}