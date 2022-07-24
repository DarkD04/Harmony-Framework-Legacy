function CheckTerrain(RadiusX,RadiusY){
	//Stop executing if CanColide is false
	if(!CanCollide) exit;
	
	//Change radius depending on the mode
	var X1, X2, Y1, Y2;
	switch(Mode){
		case 0: X1 = RadiusX Y1 = 0 X2 = RadiusX Y2= RadiusY break;
		case 1: X1 = 0 Y1 = -RadiusX X2 = RadiusY Y2= -RadiusX break;
		case 2: X1 = RadiusX Y1 = 0 X2 = RadiusX Y2= -RadiusY-1 break;
		case 3: X1 = 0 Y1 = RadiusX X2 = -RadiusY-1 Y2= RadiusX break;
	}
	
	//Trigger the collision
	if collision_line(floor(x)+X1,floor(y)+Y1,floor(x)+X2,floor(y)+Y2,Collision,true,true){
		
		//Get the value from the object with what youre coliding
		var solidCollisions = ds_list_create();
		var SolidCount = collision_line_list(floor(x)+X1,floor(y)+Y1,floor(x)+X2,floor(y)+Y2,Collision,true,true,solidCollisions,false);
		for (var i = 0; i < SolidCount; i++)
		{
			var Solid =  solidCollisions[| i];
			if(Solid.CollisionFlag){
				if (Solid.CollisionType = "Full Solid" && Solid.Plane = "Both Planes"||
				Solid.CollisionType = "Full Solid" && Solid.Plane = "Plane A" && PlaneIndex = 0 ||
				Solid.CollisionType = "Full Solid" && Solid.Plane = "Plane B" && PlaneIndex = 1 ||
				Solid.CollisionType = "Semi Solid" && PlatformCheck)
				{
					ds_list_destroy(solidCollisions);
					return true;
				}
			}
		}
		ds_list_destroy(solidCollisions);
	}

}

function CheckWall(RadiusX,RadiusY){
	//Stop executing if CanColide is false
	if(!CanCollide) exit;
	
	//Change radius depending on the mode
	var X1, X2, Y1, Y2;
	switch(Mode){
		case 0: X1 = 0; Y1 = RadiusY; X2 = RadiusX; Y2= RadiusY; break;
		case 1: X1 = RadiusY; Y1 = 0; X2 = RadiusY; Y2= -RadiusX-1; break;
		case 2: X1 = 0; Y1 = -RadiusY; X2 = -RadiusX-1; Y2= -RadiusY; break;
		case 3: X1 = -RadiusY; Y1 = 0; X2 = -RadiusY; Y2= RadiusX; break;
	}
	
	//Trigger the collision
	if collision_line(floor(x)+X1,floor(y)+Y1,floor(x)+X2,floor(y)+Y2,Collision,true,true){
		
		//Get the value from the object with what youre coliding
		var solidCollisions = ds_list_create();
		var SolidCount = collision_line_list(floor(x)+X1,floor(y)+Y1,floor(x)+X2,floor(y)+Y2,Collision,true,true,solidCollisions,false);
		for (var i = 0; i < SolidCount; i++)
		{
			var Solid =  solidCollisions[| i];
			if(Solid.CollisionFlag){
				if (Solid.CollisionType = "Full Solid" && Solid.Plane = "Both Planes"||
				Solid.CollisionType = "Full Solid" && Solid.Plane = "Plane A" && PlaneIndex = 0 ||
				Solid.CollisionType = "Full Solid" && Solid.Plane = "Plane B" && PlaneIndex = 1 )
				{
					ds_list_destroy(solidCollisions);
					return true;
				}
			}
		}
		ds_list_destroy(solidCollisions);
	}

}

function CheckAngle(X,Y){
	//Stop executing if CanColide is false
	if(!CanCollide) exit;
	
	//This script is only used for angle detection collision
	//Trigger the collision
	if collision_point(X,Y,Collision,true,true){
		//Get the value from the object with what youre coliding
		var solidCollisions = ds_list_create();
		var SolidCount = collision_point_list(X,Y,Collision,true,true,solidCollisions,false);
		for (var i = 0; i < SolidCount; i++)
		{
			var Solid =  solidCollisions[| i];
			if(Solid.CollisionFlag){
				if (Solid.CollisionType = "Full Solid" && Solid.Plane = "Both Planes"||
				Solid.CollisionType = "Full Solid" && Solid.Plane = "Plane A" && PlaneIndex = 0 ||
				Solid.CollisionType = "Full Solid" && Solid.Plane = "Plane B" && PlaneIndex = 1 || 
				Solid.CollisionType = "Semi Solid" && PlatformCheck)
				{
					ds_list_destroy(solidCollisions);
					return true;
				}
			}
		}
		ds_list_destroy(solidCollisions);
	}
}

function ObjectCollision(X1, Y1, X2, Y2, SemiSolid = false){
	//Stop executing if CanColide is false
	if(!CanCollide) exit;

	//Trigger the collision
	if collision_rectangle(floor(x)+X1,floor(y)+Y1+1,floor(x)+X2,floor(y)+Y2+1,CollisionObject,true,true){
		
		//Get the value from the object with what youre coliding
		var solidCollisions = ds_list_create();
		var SolidCount = collision_rectangle_list(floor(x)+X1,floor(y)+Y1+1,floor(x)+X2,floor(y)+Y2+1,CollisionObject,true,true,solidCollisions,false);
		for (var i = 0; i < SolidCount; i++)
		{
			var Solid =  solidCollisions[| i];
			if(Shield != S_BUBBLE || Shield = S_BUBBLE && ShieldState = 0)CanLand = Solid.CanLand;
			WallStopper = Solid.WallStopper;
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

