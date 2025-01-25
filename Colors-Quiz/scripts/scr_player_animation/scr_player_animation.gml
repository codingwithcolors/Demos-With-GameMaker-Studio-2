// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_animation()
{
//Select correct animation frame
if (x_axis > 0)
{
	image_xscale = 1;
	sprite_index = spr_player_right;
}
else if (x_axis < 0)
{
	image_xscale = -1;
	sprite_index = spr_player_right;
}
else if (y_axis > 0)
{
	sprite_index = spr_player_down;
}
else if (y_axis < 0)
{
	sprite_index = spr_player_up;
}

//Pick appropriate idle animation if no movement
else
{
	if (sprite_index == spr_player_up)
	{
		sprite_index = spr_player_up_idle;
	}
	else if (sprite_index == spr_player_right)
	{
		sprite_index = spr_player_right_idle;
	}
	else if (sprite_index == spr_player_down)
	{
		sprite_index = spr_player_down_idle;
	}
}
}