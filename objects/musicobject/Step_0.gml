/// @description Script

	//Loop by the channel amount
	for(var i = 0; i < 2; i++){
		//Music loop
		if(audio_sound_get_track_position(Playing[i]) >= LoopEnd[i] && LoopEnd[i] > 0){
			audio_sound_set_track_position(Playing[i], LoopStart[i]);
			show_debug_message("Music has looped")
		}
		//Fade
		audio_sound_gain(Playing[i], global.BGMVolume * FadeOffset, 0)
		
		//Offset the fade
		var Volume = FadeSpeed/200;
		FadeOffset += Volume * Fade;
		
		//Clamp fade offset
		FadeOffset = clamp(FadeOffset, 0, 1);
		
	}

	//Pause BGM when jingle is playing
	if(Playing[Jingle] != noone)
		audio_pause_sound(Playing[BGM]); else audio_resume_sound(Playing[BGM]);