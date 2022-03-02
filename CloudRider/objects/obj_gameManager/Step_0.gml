/// @description Insert description here
// You can write your code in this editor
if (room!=rm_lose && room != rm_win && obj_player.life<0){
	
	show_debug_message(room==rm_lv1_1)

	if (room == rm_lv1_1){
		room_goto(rm_lv2)
		obj_player.life = 100;
	}
	else{
		room_goto(rm_lose);
		instance_destroy(obj_player);
	}
}

if ((room == rm_lv3||room == rm_lv1_1) && !instance_exists(obj_enemy)){
	room_goto(rm_win);
}


if ((room== rm_lose || room == rm_win) && keyboard_check_pressed(vk_anykey)){
	room_goto(rm_lvl1)
	bossForeshadowTriggered = false;
}
