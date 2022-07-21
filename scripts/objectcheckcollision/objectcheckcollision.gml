function ObjectCheckTerrain(X1, Y1, X2, Y2, SemiSolid = true){
	//Trigger the collision
	if collision_rectangle(floor(x)+X1,floor(y)+Y1+1,floor(x)+X2,floor(y)+Y2+1,Collision,true,true){
		
		//Get the value from the object with what youre coliding
		var solidCollisions = ds_list_create();
		var SolidCount = collision_rectangle_list(floor(x)+X1,floor(y)+Y1+1,floor(x)+X2,floor(y)+Y2+1,Collision,true,true,solidCollisions,false);
		for (var i = 0; i < SolidCount; i++)
		{
			var Solid =  solidCollisions[| i];
			if(Solid.CollisionFlag){
				if (Solid.CollisionType = "Full Solid" || Solid.CollisionType = "Semi Solid" && SemiSolid = true)
				{
					ds_list_destroy(solidCollisions);
					return true;
				}
			}
		}
		ds_list_destroy(solidCollisions);
	}
}

function ObjectCheckTerrainPoint(X, Y, SemiSolid = true){
	//Trigger the collision
	if collision_point(floor(x)+X,floor(y)+Y+1,Collision,true,true){
		
		//Get the value from the object with what youre coliding
		var solidCollisions = ds_list_create();
		var SolidCount = collision_point_list(floor(x)+X,floor(y)+Y+1,Collision,true,true,solidCollisions,false);
		for (var i = 0; i < SolidCount; i++)
		{
			var Solid =  solidCollisions[| i];
			if(Solid.CollisionFlag){
				if (Solid.CollisionType = "Full Solid" || Solid.CollisionType = "Semi Solid" && SemiSolid = true)
				{
					ds_list_destroy(solidCollisions);
					return true;
				}
			}
		}
		ds_list_destroy(solidCollisions);
	}
}