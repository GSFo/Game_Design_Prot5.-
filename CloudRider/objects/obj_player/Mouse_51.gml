/// @description shoot arrow
// You can write your code in this editor
/*
if (arrowCDRemain<=0){
	var arrow = instance_create_layer(x+firePointX*image_xscale,y+firePointY*image_yscale,"Projectiles",obj_arrow);
	with (arrow){
		move_towards_point(mouse_x,mouse_y,initialSpeed);
		damage = other.damage;
	}
	arrowCDRemain = arrowCDTotal;
}
*/

if (arrowCDRemain<=0){
	sprite_index = spr_player_shoot;
	image_xscale = sign(mouse_x-x);
	arrowCDRemain = arrowCDTotal;
	//better bow effect
	if (items[3]){
		arrowCDRemain *= .7;
	}
} 