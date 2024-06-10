//if else statments
if(timer == 0){
timer = irandom_range(10,30);
//varables
var xVar = choose(-80,1080);
var yVar = random(1000);
bug = random(100);
//if statments to make the bug more termites
if (bug < 30){//flys spawn
	instance_create_layer(xVar,yVar,"Instances",obj_fs_Flys);
} if(bug > 30){//termites spawn
	instance_create_layer(xVar,yVar,"Instances",obj_fs_Termites);
}//end if tree for Spawn of bugs
}//end if Timer
else {
timer --;	
}//end else	