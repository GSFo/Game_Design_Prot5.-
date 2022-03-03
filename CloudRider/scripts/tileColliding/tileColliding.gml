// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function tileCollidingHorizontal(_tilemap){
	var meeting = false;	
	var xCheck = bbox_left;
	for (var yCheck = bbox_bottom-.2; yCheck>bbox_top; 
		yCheck-= (sprite_height-.4)/4){
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)){
			meeting = true;
		}
	}
	var xCheck = bbox_right;
	for (var yCheck = bbox_bottom-.2; yCheck>bbox_top; 
		yCheck-= (bbox_bottom-bbox_top-.4)/4){
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)){
			meeting = true;
		}
	}
	
	return meeting;
}
function tileCollidingTop(_tilemap){
	var meeting = false;	
	var yCheck= bbox_top;
	for (var j = 0; j<4; ++j){
		var xCheck = bbox_left + j *  (bbox_right-bbox_left) / 4;
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)){
			meeting = true;
		}
	}
	return meeting;
}

function tileCollidingBot(_tilemap){
	var meeting = false;	
	var yCheck= bbox_bottom;
	for (var j = 0; j<4; ++j){
		var xCheck = bbox_left + j *  (bbox_right-bbox_left) / 4;
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)){
			meeting = true;
		}
	}
	return meeting;
}

function tileEnter(_tilemap){
	return tilemap_get_at_pixel(_tilemap, x, y);
}

function tileGravityHandle(_tilemap){
	if (tileOnland(layer_tilemap_get_id("Tiles_Collision"))){
		gravity = 0;
	}
	else{
		gravity = gravityEffect;
	}
}

function basicTileCollisionHandle(_tilemap){
	var _colliding = false;
	if (tileCollidingHorizontal(_tilemap)){
		x = xprevious;
		hspeed = 0;
		_colliding = true;
	}
	if (tileCollidingTop(_tilemap)){
		y = yprevious;
		vspeed = 0;
		_colliding = true;
	}
	if (tileCollidingBot(_tilemap)){
		y = yprevious;
		vspeed = 0;
		_colliding = true;
	}
	tileGravityHandle(_tilemap);
	return _colliding;
}

function basicTileCollisionHandleNoGravity(_tilemap){
	var _colliding = false;
	if (tileCollidingHorizontal(_tilemap)){
		x = xprevious;
		hspeed = 0;
		_colliding = true;
	}
	if (tileCollidingTop(_tilemap)){
		y = yprevious;
		vspeed = 0;
		_colliding = true;
	}
	if (tileCollidingBot(_tilemap)){
		y = yprevious;
		vspeed = 0;
		_colliding = true;
	}
	return _colliding;
}
