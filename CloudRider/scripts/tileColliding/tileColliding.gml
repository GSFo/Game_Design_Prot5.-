// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tileCollidingHorizontal(_tilemap){
	var meeting = false;	
	for (var i = 0; i<2; ++i){
		var xCheck= x+ i * image_xscale * sprite_width;
		for (var j = 1; j<4; ++j){
			var yCheck = y - j * image_yscale * sprite_height / 4;
			draw_text(xCheck,yCheck,"!");
			if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)!=0){
				meeting = true;
			}
		}
	}
	return meeting;
}
function tileCollidingTop(_tilemap){
	var meeting = false;	
	var yCheck= y - image_yscale * sprite_height;
	for (var j = 1; j<4; ++j){
		var xCheck = x + j * image_yscale * sprite_width / 4;
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)!=0){
			meeting = true;
		}
	}
	return meeting;
}

function tileCollidingBot(_tilemap){
	var meeting = false;	
	var yCheck= y;
	for (var j = 1; j<4; ++j){
		var xCheck = x + j * image_yscale * sprite_width / 4;
		draw_text(xCheck,yCheck,"!");
		if (tilemap_get_at_pixel(_tilemap, xCheck, yCheck)!=0){
			meeting = true;
		}
	}
	return meeting;
}