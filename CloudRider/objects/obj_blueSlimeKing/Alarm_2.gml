/// @description summon
// You can write your code in this editor
if (slimeKingAIPattern == 2){
	alarm[2] = slimeKingSummonRate*room_speed;
	with (instance_create_layer(x,y-50,"Character_Instances",summonedObject)){
		speed = spd;
		direction =0;
	}
}else{
	alarm[2] = 1;
}