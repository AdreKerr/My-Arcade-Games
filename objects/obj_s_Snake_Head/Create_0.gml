//INITIATES THE PLAYER IN A VERTICAL POSITION
image_angle = 90;
forceMoveTimer = 30;


//dying
dying = false; 
dieTime = 0;

//TAIL HOLDER
tailObj = [instance_create_layer(128, 906,"Tail",obj_s_Snake_Body), instance_create_layer(128, 945,"Tail",obj_s_Snake_Body)]
tailPos = [{_x : 128, _y : 906}, {_x : 128, _y : 945}]

function CollisionCheck(xLoc, yLoc, deathObj) {
	for (var i = 0; i <array_length(deathObj);i++){
		var collisionDetected = collision_circle(xLoc,yLoc, 10, deathObj, false, false);
		if (collisionDetected) {
			return true;
		}//end if
	}//end For
}//end function