/// @description check if hooked to tile
// You can write your code in this editor
if (!back&&tileEnter(_tilemap)){
	speed = 0;
	if (!arrived){
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