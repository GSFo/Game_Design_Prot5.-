/// @description Insert description here
// You can write your code in this editor
if (position_meeting(obj_player.x,obj_player.y,id)&&keyboard_check_pressed(ord("D"))){
	triggered = true;
	room_goto_next();
	with (obj_player){
		_tilemap = layer_tilemap_get_id("Tiles_Collision")
		x = 10
		y = 30
	}
}
