// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information


function tileCollidingHorizontal(_tilemap){
	var meeting = false;	
	for (var i = -.5; i<1; ++i){
		var xCheck= x+ i * image_xscale * sprite_width;
		for (var yCheck =y+sprite_yoffset-.2; yCheck>y+sprite_yoffset- image_yscale * sprite_height; 
			yCheck-= (image_yscale * sprite_height-.4)/4){
			draw_text(xCheck,yCheck,"!");
			if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)){
				meeting = true;
			}
		}
	}
	return meeting;
}
function tileCollidingTop(_tilemap){
	var meeting = false;	
	var yCheck= y + sprite_yoffset - image_yscale * sprite_height;
	for (var j = -1; j<2; ++j){
		var xCheck = x + j * image_yscale * sprite_width / 4;
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)){
			meeting = true;
		}
	}
	return meeting;
}

function tileCollidingBot(_tilemap){
	var meeting = false;	
	var yCheck= y+ sprite_yoffset ;
	for (var j = -1; j<2; ++j){
		var xCheck = x + j * image_yscale * sprite_width / 4;
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
	if (tileOnland(layer_tilemap_get_id("Tiles_Collision"))){
		gravity = 0;
	}
	else{
		gravity = gravityEffect;
	}
	return _colliding;
}
