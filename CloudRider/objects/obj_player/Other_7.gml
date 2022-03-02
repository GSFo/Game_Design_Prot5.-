if (sprite_index == spr_player_shoot) {
	if (items[1]){
		var projectile = obj_skyArrow;
	}else{
		projectile = obj_arrow;
	}
	var arrow = instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale,"Projectiles",projectile);
	with (arrow){
		move_towards_point(mouse_x,mouse_y,initialSpeed);
		damage = other.damage;
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