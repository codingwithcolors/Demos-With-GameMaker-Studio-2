/// @description Controls

var up, down, accept

up			  = keyboard_check_pressed(vk_up);
down		  = keyboard_check_pressed(vk_down);
accept		  = keyboard_check_pressed(vk_enter);

if up and image_index > 0
{
	image_index -= 1;
}

if down and image_index < image_number-1
{
	image_index += 1;
}

//Answers conditions

if image_index = 0 and accept
{
	game_restart();
}

if image_index = 1 and accept
{
	room_goto(rm_main)
	instance_destroy(obj_yellow_wizard)
}

if image_index = 2 and accept
{
	game_restart();
}

if image_index = 3 and accept
{
	game_restart();
}