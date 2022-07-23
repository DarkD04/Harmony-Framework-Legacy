/// @description Script

	//Set animation speed
	image_speed = 0.2;
	
	//Culling
	Destructable();
	
	//Turn into badnik
	ObjectActBadnik();
	
	//Move noro-noro horizontally
	x += 0.1*Direction;
	
	//Get hitbox width
	var HitboxW = (bbox_right - bbox_left)/2;
	
	//Handle collision
	while(!ObjectCheckTerrain(-HitboxW, 0, HitboxW, 15) && ObjectCheckTerrain(-HitboxW, 0, HitboxW, 20)) y += 1;
	while(ObjectCheckTerrain(-HitboxW, 0, HitboxW, 15)) y -= 1;
	
	//Turn when reaching edges
	if(Direction = 1 && !ObjectCheckTerrainPoint(HitboxW, 20)) Direction = -1
	if(Direction = -1 && !ObjectCheckTerrainPoint(-HitboxW, 20)) Direction = 1