/// @description Insert description here
// You can write your code in this editor


draw_set_font(Font);

draw_text(8, 16, "HI WELCOME TO SHITTLY MADE CHARACTER SELECT LOL!!");
draw_text(8, 32, "PRESS 1 FOR SONIC");
draw_text(8, 48, "PRESS 2 FOR TAILS");
draw_text(8, 64, "PRESS 3 FOR KNUCKLES");

draw_text(8, Game.ScreenHeight-32, "PRESS F2 TO RESTART WHOLE FUCKING GAME!!");


if(Timer = 0){
	if(keyboard_check_pressed(ord("1")) || keyboard_check_pressed(ord("2")) || keyboard_check_pressed(ord("3"))){
		if(keyboard_check_pressed(ord("1"))) Game.Character = CHAR_SONIC; 
		if(keyboard_check_pressed(ord("2"))) Game.Character = CHAR_TAILS; 
		if(keyboard_check_pressed(ord("3"))) Game.Character = CHAR_KNUX; 
		Timer = 1;
		FadeManager.FadeMode = 1;
		MusicObject.Fade = MusicFadeOut;
		PlaySound(Destroy)	
	}
}else{
	if(FadeManager.Time = 1) room_goto_next();	
}