/// Move player

function scr_player_movement()
{
	//Move player on x or y axis
if (x_axis != 0 || y_axis != 0) //Check that there is input
{
	//Move player by multiplying by fraction of a second that represents frame time
	x += x_axis * player_speed * (delta_time/1000000);
	y += y_axis * player_speed * (delta_time/1000000);
}
}