image_xscale = 1; 
image_yscale = 1; 
gravity = gravityEffect;

_tilemap = layer_tilemap_get_id("Tiles_Collision"); 
hook = pointer_null;
hooked = false;
depth = -999;
lastRoom = room