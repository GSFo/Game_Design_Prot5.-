/// @description AI pattern change
// You can write your code in this editor

//pattern 0: shoot
//pattern 1: dash
//pattern 2: summon
//pattern 4: jump
alarm[1] = slimeKingAIPatternChangeRate*room_speed;
slimeKingAIPattern = (slimeKingAIPattern + 1)%4;
show_debug_message("Changing to pattern: "+string(slimeKingAIPattern))
if (slimeKingAIPattern ==1){
	speed = spd;
	direction = 0;
}else if (slimeKingAIPattern ==2){
	speed = 0;
}