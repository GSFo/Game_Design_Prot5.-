/// @description shoot
// You can write your code in this editor

// Inherit the parent event
if (slimeKingAIPattern == 0){
	event_inherited();
	event_inherited();
	alarm[0] = slimeKingAttackRate*room_speed;
}else{
	alarm[0]=1;
}

