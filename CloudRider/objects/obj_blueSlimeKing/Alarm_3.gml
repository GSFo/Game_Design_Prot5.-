/// @description jump
// You can write your code in this editor

if (onlandStrict(_tilemap) && slimeKingAIPattern == 3){
	alarm[3] = room_speed * slimeKingJumpRate;
	move_towards_point(obj_player.x,obj_player.y-50,slimeKingJumpPower);
}else{
	alarm[3] = 1;
}