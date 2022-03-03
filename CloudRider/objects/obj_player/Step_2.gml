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

if (keyboard_key == 0 && 
	sprite_index != spr_player_shoot && 
	sprite_index != spr_player_jump && 
	sprite_index != spr_player_front_atk && !hooked) {
	sprite_index = spr_player_idle;
} 

var sCloud = collision_point(x,y+sprite_yoffset,obj_cloud_static,false,false);
if(sCloud && vspeed > 0){
	if(sCloud.ready){
		audio_play_sound(snd_jumpSnow,1,false);
		vspeed = -jumpPower;
		image_index = 0; 
		sprite_index = spr_player_jump;
		with(obj_cloud_static){
			if(place_meeting(x,y,obj_player)){
				instance_destroy();
			}
		}
	}
}

