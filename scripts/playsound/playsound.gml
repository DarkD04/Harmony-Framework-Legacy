function PlaySound(SoundID, Loop = false){
	//Play sound
	audio_stop_sound(SoundID);
	audio_play_sound(SoundID, 0, Loop)
	
	//Volume control
	audio_sound_gain(SoundID, global.SFXVolume, 0)

}