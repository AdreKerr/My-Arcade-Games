var dx = x;
var dy = y;
var moved = false;

if (!dying){
	if (forceMoveTimer == 0) {
		dx += image_angle == 0 ? 40 : 0;
		dx += image_angle == 180 ? -40 : 0;
		dy += image_angle == 270 ? 40 : 0;
		dy += image_angle == 90 ? -40 : 0;
		forceMoveTimer = 30;
	} else {
		// CHECK KEYBOARD PRESSES TO DETERMINE MOVEMENT
		if ((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) && image_angle != 270) {
			dy -= 40;	
			image_angle = 90;
			forceMoveTimer = 30;
		} else if ((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) && image_angle != 90) {
			dy += 40;
			image_angle = 270;
			forceMoveTimer = 30;
		} else if ((keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))) && image_angle != 0) {
			dx -= 40;
			image_angle = 180;
			forceMoveTimer = 30;
		} else if ((keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))) && image_angle != 180) {
			dx += 40;
			image_angle = 0;
			forceMoveTimer = 30;
		}//end movement tree
		forceMoveTimer--;
	}//end else
}//end if not dying

var stopMove = CollisionCheck(dx, dy, [obj_Border , obj_s_Snake_Body]);

//kill head
if (stopMove){
	dying = true;
}//end if 

if (!dying){
 moved = dx != x || dy != y;
	if (!stopMove && moved) {	
		x = dx;
		y = dy;
		array_push(tailPos, {_x : x, _y : y})
		for (var i = 0; i < array_length(tailObj); i++) {
			tailObj[i].x = tailPos[i]._x;
			tailObj[i].y = tailPos[i]._y;
			show_debug_message("Tail-{0}, {1} {2}", tailObj[i], tailObj[i].x, tailObj[i].y)
		}//end for
		array_shift(tailPos);
	}//end if
}//end if not dying
else {
	ditTime++
	if (dieTime %3 ==0){
		if(array_length(tailObj) >0){
	var tail = array_shift(tailObj);
	instance_destroy(tail);
		}//end if array lend
		else {
			instance_destroy();	
		}//end else
	}//end if die time
}//end else 