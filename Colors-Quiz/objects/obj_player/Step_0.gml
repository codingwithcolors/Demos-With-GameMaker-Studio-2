/// @description Player AI

//Only move player if in the INGAME state
if (state == INGAME)
{

	//Reset variables to hold x & y axis
	x_axis = 0;
	y_axis = 0;

	//Get player controls on keyboard and joystick
	scr_player_controls();

	//Move player in room
	scr_player_movement();

	//Select correct animation for movement
	scr_player_animation();

	//Move player back to valid space if there is a collision
	scr_player_collision();
	
}

else if (state == MESSAGEBOX)
{
	//Select correct animation
	scr_player_animation();
}

	//Move player in room
	scr_player_movement();

	//Select correct animation for movement
	scr_player_animation();

	//Move player back to valid space if there is a collision
	scr_player_collision();