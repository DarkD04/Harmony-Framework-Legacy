/// @description Script when stage starts	
PlayMusic(StageBGM, BGM, LoopStart, LoopEnd);

var Fade = instance_create_depth(0, 0, depth-1, FadeManager);
Fade.Speed = 0.05;
