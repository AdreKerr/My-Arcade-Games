var moved = false;


if ((keyboard_check(vk_up) || keyboard_check(ord("W")))) {
	y -= 3;	
} if ((keyboard_check(vk_down) || keyboard_check(ord("S")))) {
	y += 6;
} if ((keyboard_check(vk_left) || keyboard_check(ord("A")))) {
	x -= 3;
	moved = true;
	image_angle = 10;
} if ((keyboard_check(vk_right) || keyboard_check(ord("D")))) {
	x += 3;
	moved = true;
   image_angle = 350;
}//end movement tree

image_angle = moved ? image_angle  :0;
