//orange,pink,red, blue
//gohst


//trying to get Pac Man
//Can't eat white


//If turn all blue gohst 
//Trys to run from pac man 


//if they get Pac Man 
//game Over



//TIMER CONTROLS HOW MANY FRAMES ARE WAITED BEFORE THE NEXT ACTION
timer = 30;

//MOVE ARRAY GIVES A LIST OF POSSIBLE MOVEMENT DIRECTIONS
moveArray = [0,1,2,3];

function CollisionCheck(xLoc, yLoc) {
	var collisionDetected = collision_circle(xLoc,yLoc, 5, obj_pm_Walls,false, false);
	if (collisionDetected) {
		return true;
	}//end if
}//end function