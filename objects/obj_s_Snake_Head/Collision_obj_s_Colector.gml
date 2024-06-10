if (!dying){
	instance_destroy(other);

	var _x = irandom_range(60, 940);
	var _y = irandom_range(60, 940);

	instance_create_layer(_x, _y, "Instances", obj_s_Colector);


	//var lastTail = obj_s_Snake_Body[array_length(obj_s_Snake_Body)-1];
	var lastTail = obj_s_Snake_Body[0]
	var tx = lastTail.x;
	var ty = lastTail.y;
	array_push(tailObj, instance_create_layer(tx,ty,"Tail",obj_s_Snake_Body));
	array_push(tailPos,{_x : tx, _y : ty});
	//if collect the red add to tail ++
}//end if not dying