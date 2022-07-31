function PlayerAnimationList(){
	switch(Character){
		case CHAR_SONIC:
			ANIM_STAND = sprSonicIdle;
			ANIM_WALK = sprSonicWalk;
			ANIM_RUN = sprSonicRun;
			ANIM_PEELOUT = sprSonicPeelOut;
			ANIM_ROLL = sprSonicRoll;
			ANIM_LOOKUP = sprSonicLookUp;
			ANIM_LOOKDOWN = sprSonicLookDown;
			ANIM_SPINDASH =sprSonicSpindash;
			ANIM_PUSH = sprSonicPush;
			ANIM_SKID = sprSonicSkid;
			ANIM_LEDGE1 = sprSonicLedge1;
			ANIM_LEDGE2 = sprSonicLedge2;
			ANIM_HURT = sprSonicHurt;
			ANIM_DIE = sprSonicDeath;
			ANIM_DROWN = sprSonicDrown;
			ANIM_SPRING = sprSonicSpring;
			ANIM_VICTORY = sprSonicVictory;
		break;
		case CHAR_TAILS:
			ANIM_STAND = sprTailsIdle;
			ANIM_WALK = sprTailsWalk;
			ANIM_RUN = sprTailsRun;
			ANIM_PEELOUT = sprTailsMaxRun;
			ANIM_ROLL = sprTailsRoll;
			ANIM_LOOKUP = sprTailsLookUp;
			ANIM_LOOKDOWN = sprTailsLookDown;
			ANIM_SPINDASH =sprTailsSpindash;
			ANIM_PUSH = sprTailsPush;
			ANIM_SKID = sprTailsSkid;
			ANIM_LEDGE1 = sprTailsLedge;
			ANIM_LEDGE2 = sprTailsLedge;
			ANIM_HURT = sprTailsHurt;
			ANIM_DIE = sprTailsDie;
			ANIM_DROWN = sprTailsDie;
			ANIM_SPRING = sprTailsSpring;
			ANIM_VICTORY = sprTailsVictory;
			ANIM_FLY = sprTailsFly;
			ANIM_TIRED = sprTailsTired;
			ANIM_SWIM = sprTailsSwim;
			ANIM_SWIM_TIRED = sprTailsSwimTired;
		break;
		case CHAR_KNUX:
			ANIM_STAND = sprKnuxIdle;
			ANIM_WALK = sprKnuxWalk;
			ANIM_RUN = sprKnuxRun;
			ANIM_PEELOUT = sprKnuxMaxRun;
			ANIM_ROLL = sprKnuxRoll;
			ANIM_LOOKUP = sprKnuxLookUp;
			ANIM_LOOKDOWN = sprKnuxLookDown;
			ANIM_SPINDASH = sprKnuxSpindash;
			ANIM_PUSH = sprKnuxPush;
			ANIM_SKID = sprKnuxSkid;
			ANIM_LEDGE1 = sprKnuxLedge1;
			ANIM_LEDGE2 = sprKnuxLedge2;
			ANIM_HURT = sprKnuxHurt;
			ANIM_DIE = sprKnuxDie;
			ANIM_DROWN = sprKnuxDie;
			ANIM_SPRING = sprKnuxSpring;
			ANIM_VICTORY = sprKnuxVictory;
			ANIM_GLIDE = sprKnuxGlide;
			ANIM_CLIMB = sprKnuxClimb;
			ANIM_CLIMBLEDGE = sprKnuxClimbLedge;
			ANIM_FALLING = sprKnuxFall;
			ANIM_LANDED = sprKnuxLand;
			ANIM_SLIDE = sprKnuxSlide;
			ANIM_GETUP = sprKnuxGetUp;
		break;
	}
}