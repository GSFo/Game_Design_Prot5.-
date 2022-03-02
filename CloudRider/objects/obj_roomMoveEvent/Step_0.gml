/// @description Insert description here
// You can write your code in this editor

if (position_meeting(obj_player.x,obj_player.y,id)){
	triggered = true;
	room_goto_next();
	with (obj_player){
		_tilemap = layer_tilemap_get_id("Tiles_Collision")
		x = 30
		y = 100
	}
}
