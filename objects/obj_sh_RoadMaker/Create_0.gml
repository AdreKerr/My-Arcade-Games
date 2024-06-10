
for (var i =-1 ; i<5;i++){
	//make first road
	instance_create_layer(100,i*200,"Road",obj_sh_Road);

	//make fist ground
	var leftGround = instance_create_layer(0,i*200,"Road",obj_sh_Road);
	var rightGround = instance_create_layer(500,i*200,"Road",obj_sh_Road);
	//updates ground to ground
	leftGround.sprite_index = spr_sh_Ground;
	rightGround.sprite_index = spr_sh_Ground;

}//end for 
/*
random = new random(3);
if (random = 0){
	//everything moves right
}//end if 0
if (random = 1){
	//evertthing moves left
}//end if 1
if(random = 2){
	//everthing moves right
}//end if 2
*/