/// @description Insert description here
// You can write your code in this editor
if (position_meeting(obj_player.x,obj_player.y,id)){
	triggered = true;
	obj_player.items[itemIndex] = true;
	layer_sprite_destroy(layer_sprite_get_id("Items","item_"+obj_player.itemNames[itemIndex]));
}
else{
	if triggered{
		instance_destroy();
	}
}