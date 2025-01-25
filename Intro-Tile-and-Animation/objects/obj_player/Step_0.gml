/// @description Player AI

//Variables to hold x & y axis
var x_axis = 0;
var y_axis = 0;

//Keyboard controls
//Moving up | down | left | right | no diagonals

if ((keyboard_lastkey == vk_left && keyboard_check(vk_left))
	|| (keyboard_lastkey == vk_right && keyboard_check(vk_right)))
{
	x_axis = keyboard_check(vk_right) - keyboard_check(vk_left);
}

else if ((keyboard_lastkey == vk_up && keyboard_check(vk_up))
	|| (keyboard_lastkey == vk_down && keyboard_check(vk_down)))
{
	y_axis = keyboard_check(vk_down) - keyboard_check(vk_up);
}

else if (keyboard_check(vk_left) || keyboard_check(vk_right))
{
	x_axis = keyboard_check(vk_right) - keyboard_check(vk_left);
}

else if (keyboard_check(vk_up) || keyboard_check(vk_down))
{
	y_axis = keyboard_check(vk_down) - keyboard_check(vk_up);
}

if (x_axis != 0 || y_axis != 0)
{
	//Move player by multiplying by fraction of a second that represents frame time
	x += x_axis * player_speed * (delta_time/1000000);
	y += y_axis * player_speed * (delta_time/1000000);
}

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