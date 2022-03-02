
if (sprite_index == spr_player_shoot) {
	var arrow = instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale,"Projectiles",obj_arrow);
	with (arrow){
		move_towards_point(mouse_x,mouse_y,initialSpeed);
		damage = other.damage;
	} 
	//sky arrow effect
	if (items[1]){
		show_debug_message("sky arrow triggered")
		for (var i = 0; i<skyArrowNumber; ++i){
			var skyArrow = instance_create_layer(mouse_x+i*15,mouse_y-300-i*10,"Projectiles",obj_arrow);
			with (skyArrow){
				move_towards_point(mouse_x+i*3,mouse_y,initialSpeed);
				damage = other.damage;
			}
		}
	}		
	sprite_index = spr_player_idle; 	
} 

if (sprite_index == spr_player_jump) {
	sprite_index = spr_player_idle; 
	grounded = true; 
} 

if (sprite_index == spr_player_front_atk) {
	sprite_index = spr_player_idle; 	
} 