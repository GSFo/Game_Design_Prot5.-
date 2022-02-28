/// @description tile collision
// You can write your code in this editor
if (tileCollidingBot(_tilemap)||tileCollidingHorizontal(_tilemap)||tileCollidingTop(_tilemap)){
	instance_destroy();
}