/// @description tile collision check
// You can write your code in this editor

if (basicTileCollisionHandle(_tilemap)){
	if(hook!=pointer_null&&instance_exists(hook)&&hooked){
		hook.arrived=true;
		sprite_index = spr_player_wall; 
	}
}

if (hooked){
	gravity=0; 
}

if (x!=xprevious && sprite_index != spr_player_shoot) { 
	image_xscale = sign(x-xprevious)*abs(image_xscale);
}  

if (keyboard_key == 0 && sprite_index != spr_player_shoot && sprite_index != spr_player_jump && !hooked) {
	sprite_index = spr_player_idle;
} 

var sCloud = collision_point(x,y+sprite_yoffset,obj_cloud_static,false,false);
if(sCloud && vspeed > 0){
	if(sCloud.ready){
		vspeed = -jumpPower;
		sprite_index = spr_player_jump;
		with(obj_cloud_static){
			if(place_meeting(x,y,obj_player)){
				instance_destroy();
			}
		}
	}
}

if (mouse_check_button_pressed(mb_left)) {
	var _dir = point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y);
	var _x = lengthdir_x(30, _dir);
	var _y = lengthdir_y(30, _dir);
	var _atk = instance_create_depth(obj_player.x + _x, obj_player.y + _y , -obj_player.y, obj_atk);
	_atk.image_angle = _dir;
	_atk.image_yscale = 0.5;
	_atk.image_xscale = 0.5;
}