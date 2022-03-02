/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
for (var i = 0; i<skyArrowNumber; ++i){
	with (instance_create_layer(x+i*15,y-300-i*10,"Projectiles",obj_arrow)){
		move_towards_point(other.x+8*random_range(-2,2),other.y,initialSpeed);
		damage = other.damage;
	}
}