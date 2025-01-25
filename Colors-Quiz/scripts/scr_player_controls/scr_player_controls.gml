/// Player Input Controls

function scr_player_controls()
{
//Keyboard controls
//Moving up | down | left | right | no diagonals

if ((keyboard_lastkey = vk_left && keyboard_check(vk_left))
	|| (keyboard_lastkey = vk_right && keyboard_check(vk_right)) && place_free(x, y - collisionSpeed)) //Up collision
{
	x_axis = keyboard_check(vk_right) - keyboard_check(vk_left);
}

else if ((keyboard_lastkey == vk_up && keyboard_check(vk_up))
	|| (keyboard_lastkey == vk_down && keyboard_check(vk_down)) && place_free(x - collisionSpeed, y)) //Down collision
{
	y_axis = keyboard_check(vk_down) - keyboard_check(vk_up);
}

else if (keyboard_check(vk_left) || keyboard_check(vk_right) && place_free(x, y + collisionSpeed)) //Left collision
{
	x_axis = keyboard_check(vk_right) - keyboard_check(vk_left);
}

else if (keyboard_check(vk_up) || keyboard_check(vk_down) && place_free(x + collisionSpeed, y)) //Right collision
{
	y_axis = keyboard_check(vk_down) - keyboard_check(vk_up);
}
}