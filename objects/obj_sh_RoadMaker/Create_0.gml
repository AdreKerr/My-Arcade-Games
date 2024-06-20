
for (var i = -1; i < 5; i++) {
	//create first road
	instance_create_layer(100, i * 200, "ROAD", obj_sh_Road)

	//create first grounds
	var leftGround =  instance_create_layer(0, i * 200, "ROAD", obj_sh_Road)
	var rightGround = instance_create_layer(500, i * 200, "ROAD", obj_sh_Road)

	leftGround.sprite_index = spr_sh_Grass;
	rightGround.sprite_index = spr_sh_Grass;
}//end for