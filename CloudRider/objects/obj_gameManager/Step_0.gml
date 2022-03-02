/// @description Insert description here
// You can write your code in this editor
if (room!=rm_lose && room != rm_win && obj_player.life<0){
	if (bossForeshadowTriggered){
		room_goto(rm_lv2)
	}
	else{
		room_goto(rm_lose);
		instance_destroy(obj_player);
	}
}
show_debug_message("im here")

if ((room == rm_lv3||bossForeshadowTriggered) && !instance_exists(obj_enemy)){
	room_goto(rm_win);
}


if ((room== rm_lose || room == rm_win) && keyboard_check_pressed(vk_anykey)){
	room_goto(rm_lvl1)
	bossForeshadowTriggered = false;
}
