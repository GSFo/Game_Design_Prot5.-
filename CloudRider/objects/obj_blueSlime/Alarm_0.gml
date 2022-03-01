/// @description Insert description here
// You can write your code in this editor
with instance_create_layer(x,y,"Projectiles",obj_boucingSlimeBall){
	move_towards_point(obj_player.x,obj_player.y,spd)
	vspeed -= 3;
}

alarm[0] = 5*room_speed