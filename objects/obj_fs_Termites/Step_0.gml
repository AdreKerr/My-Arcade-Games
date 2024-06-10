move_wrap(true,true,100);

//if statments
if(timer == 0){
	timer = irandom_range(20,80);	
	direction = irandom(359);
	image_angle = direction - 90;
}//end if Timer
else {
	timer--;
}//end else

//click for swatter
if (mouse_check_button_pressed(mb_left)){
	var hit = collision_rectangle(x-30,y-10,x+8,y+26,obj_fs_FlySwatter,false,false);
	if (hit){
		instance_destroy();
		effect_create_above(ef_smoke, x, y,1, c_red);

		obj_fs_Points.points += 20;
	}//end if Hit
}//end if Mouse Clicked