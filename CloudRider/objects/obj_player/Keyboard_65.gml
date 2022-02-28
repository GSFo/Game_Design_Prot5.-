/// @description move left
// You can write your code in this editor
if (!hooked){
	x -= spd*delta_time/10000
	if (grounded) {
		sprite_index = spr_player_run; 
	} 
}


