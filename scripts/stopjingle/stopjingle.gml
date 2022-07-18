function StopJingle(FadeIn, Fadespeed = 1){
	/*	Argument documentation.
		FadeIn - Here you chose do you want BGM to fade in back.
		FadeSpeed - Optional argument for fade speed, chose it only when you use FadeIn
	*/
	with(MusicObject){
		//Fade into BGM (optional)
		if(FadeIn = true){
			Fade = MusicFadeIn;
			FadeSpeed = Fadespeed;
			FadeOffset = 0;
		}
	
		//Stop the jingle here
		audio_stop_sound(Playing[Jingle]);
		Playing[Jingle] = noone;
	}
}