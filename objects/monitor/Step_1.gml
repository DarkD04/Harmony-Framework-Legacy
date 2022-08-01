/// @description Assign icon attributes

	switch(MonitorType){
		case "10 Rings":	Icon = sprIconRings;	break;
		
		case "Invincibility":	Icon = sprIconInvincible;	break;
		
		case "SpeedShoes":	Icon = sprIconSpeedShoe;	break;
		
		case "Extra Life":	switch(Player.Character){
			case CHAR_SONIC: Icon = sprIconLifeSonic; break;
			case CHAR_TAILS: Icon = sprIconLifeTails; break;
			case CHAR_KNUX: Icon = sprIconLifeKnux; break;
		} break;
		
		case "Eggman":	Icon = sprIconEggman;	break;
		
		case "Shield":	Icon = sprIconShield;	break;
		
		case "Fire Shield":	Icon = sprIconFireShield;	break;
		
		case "Magnet Shield":	Icon = sprIconElectricShield;	break;
		
		case "Bubble Shield":	Icon = sprIconBubbleShield;	break;
	}