/// @description Insert description here
// You can write your code in this editor
with instance_create_layer(x,y,"Projectiles",obj_redSlimeBall){
	move_towards_point(obj_player.x,obj_player.y,spd)
}

alarm[0] = 5*room_speed