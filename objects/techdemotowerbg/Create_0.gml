/// @description Add background
	//Inherite create event from background parent
	event_inherited();
	
	//Vertical scroll factor for all of the background
	var VScroll = 0.9;
	
	//Make background
	DrawBackground(0, bgTechdemoTower, 0.98, VScroll, 0, 0, -0.05, 0, 0, 512, 144);
	DrawBackground(1, bgTechdemoTower, 0.97, VScroll, 0, 144, 0, 144, 0, 512, 32, true, 1, 0.08);
	DrawBackground(2, bgTechdemoTower, 0.88, VScroll, 0, 176, 0, 176, 0, 512, 16);
	DrawBackground(3, bgTechdemoTower, 0.82, VScroll, 0, 192, 0, 192, 0, 512, 16);
	DrawBackground(4, bgTechdemoTower, 0.74, VScroll, 0, 208, 0, 208, 0, 512, 48);
	DrawBackground(5, bgTechdemoTower, 0.73, VScroll, 0, 256, 0, 256, 0, 512, 128, true, 1, 0.02);
