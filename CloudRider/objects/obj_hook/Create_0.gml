/// @description Insert description here
// You can write your code in this editor
_tilemap = layer_tilemap_get_id("Tiles_Collision")
image_xscale = .5;
image_yscale = .5;
attachedCloud = pointer_null;
depth = -1000;
audio_play_sound(snd_hookOut,1,false);
preback = back;
intile = false;
preHookToCloud = false;