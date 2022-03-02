//sky arrow effect
event_inherited();
if (obj_player.items[1]){
	show_debug_message("sky arrow triggered")
	for (var i = 0; i<skyArrowNumber; ++i){
		var skyArrow = instance_create_layer(x-30*random_range(-2,2),y-300-16*random_range(-2,2),"Projectiles",obj_arrow);
		with (skyArrow){
			move_towards_point(other.x+8*random_range(-2,2),other.y,initialSpeed);
			damage = other.damage;
		}
	}
}		