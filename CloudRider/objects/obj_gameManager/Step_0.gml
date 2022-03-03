/// @description Insert description here
// You can write your code in this editor
if (room!=rm_lose && room != rm_win && obj_player.life<0){
	if (room == rm_lv1_1){
		room_goto(rm_lv2)
		obj_player.life = 100;
		obj_player.x = 30;
		obj_player.y = 100;
	}
	else{
		room_goto(rm_lose);
		instance_destroy(obj_player);
	}
}

if ((room == rm_lv3||room == rm_lv1_1) && !instance_exists(obj_enemy)){
	room_goto(rm_win);
	instance_destroy(obj_player);
	score_val += round(1000/current_time)
}


if ((room== rm_lose || room == rm_win) && keyboard_check_pressed(ord("R"))){
	room_goto(rm_lvl1)
	score_val = 0;
}

#region Score Comments 
/*
Score: 
Blue slime +10 pts
Red slime +15 pts
Blue Slime Shield +20 pts
Blue Slime King +500 pts
Red Slime King +500 pts 
Apple +5 pts 
Get all apples in a level +10 extra pts
Defeat all enemies in a level +20 extra pts 
Defeat both slime kings +300 extra pts 
*/
#endregion 





