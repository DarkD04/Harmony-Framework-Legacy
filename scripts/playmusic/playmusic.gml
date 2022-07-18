function PlayMusic(Music, Channel, Loopstart, Loopend){
	/*	Argument documentation.
		Music - Which music do you want to play.
		Channel - You have two channels, you use macros "BGM" and "Jingle" to decide which channel is used.
		LoopStart - The beginning of the music loop
		LoopEnd - The end of the music track and then returns music position to LoopStart. Use 0 to disable it.
	*/
	
	//Music macros
	#macro BGM 0
	#macro Jingle 1
	
	//Get the sound object
	with(MusicObject){
		
		//Stop everything before BGM plays.
		if(Channel = BGM)
			audio_stop_sound(Playing[Channel]);
		
		//Stop jingle
		audio_stop_sound(Playing[Jingle]);
		
		//Restore jingle channel value
		Playing[Jingle] = noone;

		
		//Set the loop points
		LoopStart[Channel] = Loopstart;
		LoopEnd[Channel] = Loopend;
		
		//Play the sound
		Playing[Channel] = audio_play_sound(Music, 0, true);
	}
}