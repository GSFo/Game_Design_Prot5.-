/// @description move right
// You can write your code in this editor
if (!hooked){
	x += delta_time/10000*spd;
	if (grounded) {
		sprite_index = spr_player_run; 
	} 
}
