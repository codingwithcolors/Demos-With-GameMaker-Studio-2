/// @description Player activates teleporter

//Change states
if (state == INGAME)
{
	state = TELEPORTER;
	//No longer necessary as it is in the room already now
	//instance_create_layer(other.x, other.y, "Blocks_Player_tiles", obj_teleporter_ray);
	image_alpha = .4;
	//Call alarm to change rooms
	alarm[0] = 75;
	
	audio_play_sound(snd_teleporter, 1, false);
	audio_stop_sound(snd_footsteps);
}

//Change animation state
if (sprite_index == spr_player_down)
{
	sprite_index = spr_player_down_idle;
}

else if (sprite_index == spr_player_up)
{
	sprite_index = spr_player_up_idle;
}

else if (sprite_index == spr_player_right)
{
	sprite_index = spr_player_right_idle;
}