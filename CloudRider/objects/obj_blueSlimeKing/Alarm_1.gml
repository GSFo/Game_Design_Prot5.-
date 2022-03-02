/// @description AI pattern change
// You can write your code in this editor

//pattern 0: shoot
//pattern 1: dash
//pattern 2: summon
//pattern 4: jump
alarm[1] = slimeKingAIPatternChangeRate*room_speed;
slimeKingAIPattern = (slimeKingAIPattern + 1)%4;
if (slimeKingAIPattern ==1){
	speed = 8;
	direction = 0;
}
	