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
		break;
	}
}