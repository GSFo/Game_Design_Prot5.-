
if (sprite_index == spr_player_shoot) {
	var arrow = instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale,"Projectiles",obj_arrow);
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