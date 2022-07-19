/// @description Reset everything
	//General
	Fade = MusicFadeIn;
	FadeSpeed = 1;
	FadeOffset = 1;
	
	//Reset volume
	for(var i = 0; i < 2; i++)
		audio_sound_gain(Playing[i], global.BGMVolume, 0)