/// @description Insert description here
// You can write your code in this editor
image_xscale=.5;
image_yscale=.5;
_tilemap = layer_tilemap_get_id("Tiles_Collision"); 
speed = spd;
direction = 0;

// change curr sprite for every new enemy child
hurt_sprite = spr_slime_hurt; 
curr_sprite = spr_enemy_temp; 