/// @description Player variables

//Player state macros
#macro INGAME 0
#macro MESSAGEBOX 3

//Speed in pixels per second
player_speed = 150;

//Get layer ID of collision layer in game
layer_id = layer_get_id("Background_Collision_Tiles");

//Get tilemap for collision layer
tilemap = layer_tilemap_get_id(layer_id);

//Get the relative distance between the origin and the corners of the collision box
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index);
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index);
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index);

//State that player is in
state = INGAME;

//Holds x and y axis date for player controller normalized to -1 to 1
x_axis = 0;
y_axis = 0;

image_speed = 0;
walkSpeed = 3.5
collisionSpeed = walkSpeed + 2;