var dx = x;
var dy = y;
var moved = false;

if (forceMoveTimer == 0) {
	dx += image_angle == 0 ? 40 : 0;
	dx += image_angle == 180 ? -40 : 0;
	dy += image_angle == 270 ? 40 : 0;
	dy += image_angle == 90 ? -40 : 0;
	forceMoveTimer = 30;
} else {
	// CHECK KEYBOARD PRESSES TO DETERMINE MOVEMENT
	if ((keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) /*&& image_angle != 270*/) {
		dy -= 40;	
		image_angle = 90;
		forceMoveTimer = 30;
	} else if ((keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))/* && image_angle != 90*/) {
		dy += 40;
		image_angle = 270;
		forceMoveTimer = 30;
	} else if ((keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))/* && image_angle != 0*/) {
		dx -= 40;
		image_angle = 180;
		forceMoveTimer = 30;
	} else if ((keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))/* && image_angle != 180*/) {
		dx += 40;
		image_angle = 0;
		forceMoveTimer = 30;
	}//end movement tree
	forceMoveTimer--;
}//end else
var stopMove = CollisionCheck(dx, dy);
moved = dx != x || dy != y;

if (!stopMove && moved) {	
	x = dx;
	y = dy;
}//end if