/// @description check if hooked to tile
// You can write your code in this editor
if (!back){
	if (tileEnter(_tilemap)){
		if(!intile){
			audio_play_sound(snd_hookHitTile,1,false);
		}
		intile = true;
		speed = 0;
		if (!arrived){
			show_debug_message("??")
			with (source){
				hooked = true;
				if (!(tileCollidingBot(_tilemap)||tileCollidingHorizontal(_tilemap)||tileCollidingTop(_tilemap))){
					move_towards_point(other.x,other.y,other.pullSpeed);
				}
			}
		}
		else{
			source.speed =0;
		}
	}
}
//preback = back;