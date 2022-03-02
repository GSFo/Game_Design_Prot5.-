/// @description summon
// You can write your code in this editor
if (slimeKingAIPattern == 2){
	show_debug_message("summoning"+string(alarm[2]))
	alarm[2] = slimeKingSummonRate*room_speed;
	show_debug_message("summoning"+string(alarm[2]))
	with (instance_create_layer(x,y-50,"Character_Instances",obj_blueSlime)){
		speed = spd;
		direction =0;
	}
}else{
	alarm[2] = 1;
}