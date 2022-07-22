function GetEndResults(){
	//Ring bonus
	RingBonus = Game.Rings * 100;
	
	//Ring bonus
	var Sec, Min;
	
	Sec = floor(Game.StageTimer/1000) mod 60;
	Min = floor(Game.StageTimer/60000);
	
	//Time result
	if(Min = 0 && Sec <= 59) TimeBonus = 50000;
	if(Min = 1 && Sec <= 29) TimeBonus = 10000;
	if(Min = 1 && Sec >= 30 && Sec <= 59) TimeBonus = 5000;
	if(Min = 2 && Sec <= 29) TimeBonus = 4000;
	if(Min = 2 && Sec >= 30 && Sec <= 59) TimeBonus = 3000;
	if(Min = 3 && Sec <= 29) TimeBonus = 1000;
	if(Min >= 3 && Min <= 9 && Sec >= 30 && Sec <= 59) TimeBonus = 100;
}