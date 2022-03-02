/// @description Insert description here
// You can write your code in this editor
with instance_create_layer(x,y,"Projectiles",projectile){
	move_towards_point(obj_player.x,obj_player.y,spd)
	if (id == obj_bouncingSlimeBall){
		vspeed -= random_range(2,4);
	}
	damage *= other.damageScale;
	image_xscale *= other.damageScale;
	image_yscale *= other.damageScale;
}

alarm[0] = 5*room_speed
