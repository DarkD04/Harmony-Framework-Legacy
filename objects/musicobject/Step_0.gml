/// @description Script

	//Loop by the channel amount
	for(var i = 0; i < 2; i++){
		//Music loop
		if(audio_sound_get_track_position(Playing[i]) >= LoopEnd[i] && LoopEnd[i] > 0){
			audio_sound_set_track_position(Playing[i], LoopStart[i]);
		}
		//Fade
		audio_sound_gain(Playing[i], global.BGMVolume * FadeOffset, 0)
		
		//Offset the fade
		var Volume = FadeSpeed/200;
		FadeOffset += Volume * Fade;
		
		//Clamp fade offset
		FadeOffset = clamp(FadeOffset, 0, 1);
		
		//Resume the channels
		audio_resume_sound(Playing[i]);
		
		//Pause BGM when jingle is playing
		if(Playing[Jingle] != noone)
			audio_pause_sound(Playing[BGM]);
		
		//Stop everything when drown jingle is playing
		if(audio_is_playing(DrownJingle))
			audio_pause_sound(Playing[i]);
	}