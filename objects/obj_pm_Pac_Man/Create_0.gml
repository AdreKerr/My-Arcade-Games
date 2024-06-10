//collect the white 
//eats them to get points


//eats ball gohst turn blue 
//can eat them now
//adds points 

//collect all white before gohst eat you


//may add
//eats fruit


//INITIATES THE PLAYER IN A VERTICAL POSITION
image_angle = 90;
forceMoveTimer = 30;




function CollisionCheck(xLoc, yLoc) {
	var collisionDetected = collision_circle(xLoc,yLoc, 5, obj_pm_Walls, false, false);
	var CollisionWall = collision_circle(xLoc,yLoc,5,obj_Line_Left_Right,false,false);
	if (collisionDetected || CollisionWall) {
		return true;
	}//end if
}//end function